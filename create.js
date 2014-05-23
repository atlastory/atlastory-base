#!/usr/bin/env node

var fs = require('fs'),
    path = require('path'),
    crypto = require('crypto'),
    _ = require('lodash'),
    glob = require('glob');

var config = require('config.json'),
    project = require('project.json'),
    layers = [],
    layer;

var getStart = function(period) {
    return parseFloat(period.replace(/--?\d.+$/g,''));
};
var getEnd = function(period) {
    return parseFloat(period.replace(/^-?\d+-|\.geojson/g,''));
};

// Get period input

var args, period, start, end;

args = process.argv;
args = (args[0] == 'node') ? args.slice(2) : args.slice(1);
period = args[0];

if (!period) return console.error('Error: Needs a period in the format "year-year"');
start = getStart(period);
end   = getEnd(period);

// Checks if periods match

function inPeriod(period) {
    var thisStart = getStart(period),
        thisEnd   = getEnd(period);
    return  end <= thisEnd &&
            end > thisStart &&
            start >= thisStart &&
            start < end;
}

// Gets all GeoJSONs

var basePath = path.resolve(config.basePath),
    globPath = path.join(basePath, '*/*/**.geojson');

glob(globPath, function(err, files) {
    if (err) throw err;
    files.forEach(parseFile);
    finish();
});

// Parse files

function parseFile(file) {
    var period = path.basename(file),
        folder = path.dirname(file),
        region = path.basename(path.join(folder,'..')),
        type = path.basename(folder),
        template, i;

    if (/center|label/.test(period)) type += '-labels';

    if (_.contains(config.regions, region) && inPeriod(period)) {
        template = _.find(config.layers, function(l) {
            return l.type == type;
        });
        i = config.layers.indexOf(template);
        config.layers.splice(i, 0, {
            type: type,
            geometry: template.geometry,
            file: file
        });
    }
}

function finish() {
    // Create project layers

    config.layers.forEach(function(l) {
        layer = _.cloneDeep(project.Layer[0]);
        layer.geometry = l.geometry;
        layer.id = layer.name = 'layer-' + crypto.createHash('md5').update(l.file).digest("hex").substring(0,5);
        layer['class'] = l.type;
        layer.Datasource.file = l.file;

        layers.push(layer);
    });

    // Finalize project JSON

    layers.reverse();
    project.Layer = _.filter(layers, function(l) {
        return l.Datasource.file !== "";
    });

    project.description = period;

    // Write project.mml file

    fs.writeFileSync('project.mml', JSON.stringify(project,null,2));
    console.log("Success! 'project.mml' file built")
}
