
// COLORS
// ====================

// Blank map

@land:    #f1f4e3;
@water:   #83bee8;
@coast:   darken(@water, 30%);

@line:    #727272;

// General colors

@white:     #F0F8FF; // blue-tinted, for Antarctica
@red:       #f00;

// Tint bands

@tint-turquoise:  #82f2e1; // 1
@tint-green:      #8fed8f; // 2
@tint-lime:       #e3f166; // 3
@tint-yellow:     #fff875; // 4
@tint-orange:     #ffcb75; // 5
@tint-red:        #faafbf; // 6
@tint-purple:     #d3a6f6; // 7


// FONTS
// ====================

Map { font-directory: url(./fonts); }

@font-sans-serif:     "Lato Regular", "Helvetica Neue Regular", "Arial Regular";
@font-sans-bold:      "Lato Bold", "Helvetica Neue Bold", "Arial Bold";
@font-serif-bold:     "Volkhov Bold";

@base-font-size:        9;
@admin-1-font-size:     5 + @base-font-size;
@admin-2-font-size:     2 + @base-font-size;
@settlement-font-size:  1 + @base-font-size;

@admin-1-spacing:       4;


// ICONS
// ====================

@icon-path:       "./icons";

@icon-capital-1:  @icon-path + '/star-circle.svg';
@icon-capital-2:  @icon-path + '/star.svg';


// SIZES
// ====================

@land-border:   0.1; // multipler
@lake-border:   0;    // additive
@river-width:   0.2;  // additive

@tint-size:                 1.2;    // multiplier
@tint-offset: 				3;    // multipler (default 5)
@sovereign-outline-width:   0.4;  // multipler
@sovereign-outline-color:   @line;


// MAP ARTIFACTS
// ====================

@grid-opacity:  0.15;
@grid-width:    0.9;
