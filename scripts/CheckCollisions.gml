///CheckCollisions()
//
//  checks collsion
//
//  x1        x center point
//  y1        y center point
//  Width     width in pixels from x,y point
//  Height    Height in pixels from x,y point
//  Prec      precision
//  NotMe     if self can cause collision
//
//  Last edited 03/28/16
//
////////////////////////////////

var x1 = argument0;
var y1 = argument1;
var Width = argument2/2;
var Height = argument3/2;
var Object = argument4;
var Prec = argument5;
var NotMe = argument6;


var Col = collision_rectangle(x1-Width,y1-Height,x1+Width,y1+Height,Object,Prec,NotMe);
if (Col) == true {
  speed -=( (4 * Acceleration) / (Acceleration + 10) / 2);
}
