
// Admin 1

.admin-1-labels [zoom>0]  {
  text-face-name: @font-serif-bold;
  text-fill: #000;
  text-size: @admin-1-font-size;
  text-transform: uppercase;
  text-halo-fill: rgba(255,255,255,0.7);
  text-halo-radius: 1;
  text-name:"''";
  text-allow-overlap: true;

  [_size=0][zoom>=1],
  [_size=1][zoom>=2],
  [_size=2][zoom>=3],
  [_size=3][zoom>=4],
  [_size=4][zoom>=5],
  [_size=5][zoom>=6] {
    text-name: [name_sm];
    text-character-spacing: @admin-1-spacing;
  }
  [_size=0][zoom=2],
  [_size=1][zoom=3],
  [_size=2][zoom=4],
  [_size=3][zoom=5],
  [_size=4][zoom=6],
  [_size=5][zoom=7] {
    text-name: [name];
    text-size: @admin-1-font-size + 2;
    text-character-spacing: @admin-1-spacing + 1;
  }
  [_size=0][zoom=3],
  [_size=1][zoom=4],
  [_size=2][zoom=5],
  [_size=3][zoom=6],
  [_size=4][zoom=7],
  [_size=5][zoom=8] {
    text-name: [name];
    text-size: @admin-1-font-size + 4;
    text-character-spacing: @admin-1-spacing + 3;
  }
  [_size=0][zoom=4],
  [_size=1][zoom=5],
  [_size=2][zoom=6],
  [_size=3][zoom=7],
  [_size=4][zoom=8],
  [_size=5][zoom=9] {
    text-name: [name];
    text-size: @admin-1-font-size + 9;
    text-character-spacing: @admin-1-spacing + 5;
  }
  [_size=0][zoom=5],
  [_size=1][zoom=6],
  [_size=2][zoom=7],
  [_size=3][zoom=8],
  [_size=4][zoom=9] {
    text-name: [name];
    text-size: @admin-1-font-size + 12;
    text-character-spacing: @admin-1-spacing + 7;
  }
  [_size=0][zoom=6],
  [_size=1][zoom=7],
  [_size=2][zoom=8],
  [_size=3][zoom=9] {
    text-name: [name];
    text-size: @admin-1-font-size + 20;
    text-character-spacing: @admin-1-spacing + 11;
  }
}

// Admin 2

.admin-2-labels [zoom>2] {
  text-face-name: @font-sans-bold;
  text-fill: #000;
  text-character-spacing: 1;
  text-halo-fill: rgba(255,255,255,0.7);
  text-halo-radius: 1;
  text-line-spacing: 1;
  text-wrap-width: 100;
  text-placement: vertex;
  text-placement-type: simple;
  text-placements: "SE,NW";
  text-avoid-edges: true;
  text-allow-overlap: false;
  text-clip: false;

  [zoom=3] {
    text-name: [name_sm];
    text-size: @admin-2-font-size;
    text-character-spacing: 5;
  }
  [zoom>=4] {
    text-name: [name_md];
    text-size: @admin-2-font-size + 1;
    text-wrap-width: 50;
  }
  [zoom=5] {
  	text-size: @admin-2-font-size + 3;
    text-wrap-width: 75;
    text-character-spacing: 3;
  }
  [zoom>=6] {
    text-name: [name];
    text-size: @admin-2-font-size + 5;
    text-wrap-width: 100;
    text-allow-overlap: true;
    text-avoid-edges: false;
  }
}

// Settlements / cities

.settlement {
  text-face-name: @font-sans-bold;
  text-fill:@line * 0.6;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:1;
  text-line-spacing:1;
  text-wrap-width: 35;
  text-name:"''";
  text-placement: interior;
  text-placement-type: simple;
  text-placements: "SE,E,NE,NW,W";
  text-horizontal-alignment: auto;
  text-vertical-alignment: auto;
  text-dx: 5;
  //text-dy: -3;
  text-allow-overlap: false;

  marker-fill: #000;
  marker-allow-overlap: true;
  marker-width: 0;
  marker-height: 0;
  [type='capital-1'] {
    marker-file: url(@icon-capital-1);
    marker-width: 0.1;
  	marker-height: 0.1;
  }
  [type='capital-2'] {
    marker-file: url(@icon-capital-2);
    marker-width: 0.1;
  	marker-height: 0.1;
  }

  [_size=0][zoom>=1],
  [_size=1][zoom>=2],
  [_size=2][zoom>=3],
  [_size=3][zoom>=4],
  [_size=4][zoom>=5],
  [_size=5][zoom>=6],
  [_size=6][zoom>=7],
  [_size=7][zoom>=8],
  [_size=8][zoom>=9] {
    text-name: "[name]";
    text-size: @settlement-font-size;
    marker-width: 3; marker-height: 3;
    [type='capital-1'] { marker-width: 6; marker-height: 6; }
    [type='capital-2'] { marker-width: 5; marker-height: 5; }
  }
  [_size=0][zoom=2],
  [_size=1][zoom=3],
  [_size=2][zoom=4],
  [_size=3][zoom=5],
  [_size=4][zoom=6],
  [_size=5][zoom=7],
  [_size=6][zoom=8],
  [_size=7][zoom=9] {
    text-size: @settlement-font-size + 1;
    marker-width: 4; marker-height: 4;
    [type='capital-1'] { marker-width: 8; marker-height: 8; text-dx: 6; }
    [type='capital-2'] { marker-width: 6; marker-height: 6; }
  }
  [_size=0][zoom=3],
  [_size=1][zoom=4],
  [_size=2][zoom=5],
  [_size=3][zoom=6],
  [_size=4][zoom=7],
  [_size=5][zoom=8],
  [_size=6][zoom=9] {
    text-size: @settlement-font-size + 2;
    marker-width: 5; marker-height: 5;
    [type='capital-1'] { marker-width: 9; marker-height: 9; text-dx: 7; }
    [type='capital-2'] { marker-width: 7; marker-height: 7; }
  }
  [_size=0][zoom=4],
  [_size=1][zoom=5],
  [_size=2][zoom=6],
  [_size=3][zoom=7],
  [_size=4][zoom=8],
  [_size=5][zoom=9] {
    text-size: @settlement-font-size + 3;
    marker-width: 6; marker-height: 6;
    [type='capital-1'] { marker-width: 10; marker-height: 10; text-dx: 8; }
    [type='capital-2'] { marker-width: 8; marker-height: 8; text-dx: 6; }
  }
  [_size=0][zoom=5],
  [_size=1][zoom=6],
  [_size=2][zoom=7],
  [_size=3][zoom=8],
  [_size=4][zoom=9] {
    text-size: @settlement-font-size + 4;
    marker-width: 7; marker-height: 7;
    [type='capital-1'] { marker-width: 10; marker-height: 10; text-dx: 8; }
    [type='capital-2'] { marker-width: 8; marker-height: 8; text-dx: 6; }
  }
  [_size=0][zoom=6],
  [_size=1][zoom=7],
  [_size=2][zoom=8],
  [_size=3][zoom=9] {
    text-size: @settlement-font-size + 5;
    marker-width: 7; marker-height: 7;
    [type='capital-1'] { marker-width: 10; marker-height: 10; text-dx: 8; }
    [type='capital-2'] { marker-width: 8; marker-height: 8; text-dx: 6; }
  }


}

