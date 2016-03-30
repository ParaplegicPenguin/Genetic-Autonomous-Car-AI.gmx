///draw_line_w(x1,y1,x2,y2,width)
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
var Width = argument4;


// Draw line
var a = 0.5;
for(var n=1;n<Width;n++) {
  draw_set_alpha(a);
  draw_line_width(x1,y1,x2,y2,n);
  a /= 1.5;
}
draw_set_alpha(0.5);
/**/
draw_circle(x1,y1,Width/2,false);
draw_circle(x2,y2,Width/2,false);
/**/
