
// Admin 1

.admin-1 {
  ::fill {
	polygon-fill: @land; 
  }
  ::tint-band {
    line-color: @tint-red; // tint color
    line-join: round;
    line-width: 0;
    image-filters: agg-stack-blur(1,1);
    polygon-fill: black;
    polygon-opacity: 1;
    polygon-comp-op: dst-in;
    //[zoom=0] { line-width: 1 * @tint-size; line-offset: -1 * @tint-size/@tint-offset; }
    [zoom=1] { line-width: 1 * @tint-size; line-offset: -2 * @tint-size/@tint-offset; }
    [zoom=2] { line-width: 3 * @tint-size; line-offset: -3 * @tint-size/@tint-offset; }
    [zoom=3] { line-width: 4 * @tint-size; line-offset: -4 * @tint-size/@tint-offset; }
    [zoom=4] { line-width: 6 * @tint-size; line-offset: -6 * @tint-size/@tint-offset; }
    [zoom=5] { line-width: 7 * @tint-size; line-offset: -7 * @tint-size/@tint-offset; }
    [zoom=6] { line-width: 8 * @tint-size; line-offset: -8 * @tint-size/@tint-offset; }
    [zoom>6] { line-width: 9 * @tint-size; line-offset: -9 * @tint-size/@tint-offset; }
  }
  ::mask {
    //polygon-fill: black;
    //comp-op: dst-in;
  }
  ::outline {
    line-color: @sovereign-outline-color;
    line-opacity: 1;
    line-join: round;
    [zoom=0] { line-width: 0.1; line-opacity: 0.5; }
    [zoom=1] { line-width: 0.3 * @sovereign-outline-width; }
    [zoom=2] { line-width: 0.8 * @sovereign-outline-width; }
    [zoom=3] { line-width: 1.0 * @sovereign-outline-width; }
    [zoom=4] { line-width: 1.4 * @sovereign-outline-width; }
    [zoom>=5] { line-width: 1.6 * @sovereign-outline-width; }
    [zoom>=6] { line-width: 2 * @sovereign-outline-width; }
  }
}

// Admin 2

.admin-2 [zoom>1] {
  line-color: @line;
  line-opacity: 0.3;
  line-join: round;

  [zoom=2] { line-width: 0.4; }
  [zoom=3] { line-width: 0.7; }
  [zoom=4] { line-width: 1.0; }
  [zoom>=5] { line-width: 1.5; }
  [zoom>=6] { line-width: 2; }
}

// Colors

.admin-1::tint-band {
  [_color=1] { line-color: @tint-turquoise; }
  [_color=2] { line-color: @tint-green; }
  [_color=3] { line-color: @tint-lime; }
  [_color=4] { line-color: @tint-yellow; }
  [_color=5] { line-color: @tint-orange; }
  [_color=6] { line-color: @tint-red; }
  [_color=7] { line-color: @tint-purple; }
}

