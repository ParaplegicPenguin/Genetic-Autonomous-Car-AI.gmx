///draw_rectangle_w(x1,y1,x2,y2,outline,width)
//
//  Draws rectangle with width
//
//  x1        1st x in x,y pair,  real
//  y1        1st y in x,y pair,  real
//  x2        2nd x in x,y pair,  real
//  y2        2nd y in x,y pair,  real
//  outline   true or false,      bool
//  width     width of line       int
//
//  Last edited 03/28/16
//
////////////////////////////////

// Define vars
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var Outline = argument4;
var Width = argument5;


// Draw rectangle
var a = 0.5;
for(var n=0;n<Width;n++) {
  draw_set_alpha(a);
  draw_rectangle(x1+n,y1+n,x2-n,y2-n,Outline);
  a /= 1.2;
}
