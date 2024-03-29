# Atlastory Base Styles

This repo should be located in your TileMill `project` folder so that the directory is structured as: `project/atlastory-base/project.json`.

To install (requires Node.js v10+), run `npm install` in the `atlastory-base` folder.

### Create Period TileMill Map

```sh
# Run as a bash executable script
./create.js 1940-1950
# Run from Node
node create.js 1800-1842
```

The first argument must contain a year range representing the period you are creating, in the format YYYY-YYYY.

#### Configuration

Configure map creation in `config.json`:

* __basePath__: The absolute or relative path to the [Atlastory Base Map](https://github.com/atlastory/base-map) repo (containing the correct folder structure with GeoJSONs).
* __regions__: Region folder names to accept when searching for GeoJSONs.
* __layers__: The ordering and locations of the map layer stack.


# Normalize GeoJSON

```sh
./normalize-geojson.js <file> <added key> <added value>
```

* `file` the location of the GeoJSON file to normalize
* `added key` the name of a column to add to every shape
* `added value` the value of the new column