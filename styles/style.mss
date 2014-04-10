
Map {
  background-color: @water;
  buffer-size: 50;
}

.land {
  polygon-fill: white;
  line-color: @coast;
  line-width: 0.4;
  line-opacity: 0.9;
  line-join: round;
  [zoom=0] { line-width: 1 * @land-border; line-opacity: 0.5; }
  [zoom=1] { line-width: 2 * @land-border; }
  [zoom=2] { line-width: 3 * @land-border; }
  [zoom>2] { line-width: 4 * @land-border; }
}

.countries  {
  polygon-fill: white;
  polygon-opacity: 1;
  ::outline [zoom>3] {
    line-width: 0.5;
    line-opacity: 0.5;
  	line-color: @line;
  }
  ::tint [zoom>4] {
    line-width: 7;
    line-opacity: 0.1;
  	line-color: @line;
    image-filters: agg-stack-blur(3,3);
  }
}

.ocean {
  polygon-opacity: 1;
  polygon-fill: @water;
  //line-width: 0.35;
  //line-color: @coast;
}

.coastline {
  line-color: @coast;
  line-width: 0.4;
  line-opacity: 0.9;
  line-join: round;
  [zoom=0] { line-width: 1 * @land-border; line-opacity: 0.5; }
  [zoom=1] { line-width: 2 * @land-border; }
  [zoom=2] { line-width: 3 * @land-border; }
  [zoom>2] { line-width: 4 * @land-border; }
}

.graticules {
  line-width: 0;
  line-color: #000;
  line-opacity: @grid-opacity;
  [frequency=30][zoom=2] { line-width: @grid-width; }
  [frequency=20][zoom>=3] { line-width: @grid-width; }
  [frequency=10][zoom>=5] { line-width: @grid-width; }
  //[frequency=5][zoom>=6] { line-width: @grid-width; }
}

