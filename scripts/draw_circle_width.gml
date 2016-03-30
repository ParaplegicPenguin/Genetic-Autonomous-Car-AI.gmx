///draw_circle_width(x,y,radius,outline,width)
//
//  Draws circle with width
//
//  x         x position,                   real
//  y         y position,                   real
//  radius    radius of outer-most circle,  real
//  outline   true or false,                bool
//  width     width of line,                int
//
//  Last edited 03/28/16
//
////////////////////////////////

// Define vars
var x1 = argument0;
var y1 = argument1;
var Radius = argument2;
var Outline = argument3;
var Width = argument4;


// Draw rectangle
for(var n=0;n<Radius;n++) {
  draw_circle(x1,y1,Radius-n,Outline);
}
