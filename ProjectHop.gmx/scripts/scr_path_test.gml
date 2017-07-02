///scr_path_x(x1,y1,x2,y2,x,y,0)
var xi = argument0;
var yi = argument1;
var xo = argument2;
var yo = argument3;

var xdi = point_distance(xi,0,xo,0);
var ydi = point_distance(0,yi,0,yo);

var xdo = point_direction(xi,0,xo,0);
var ydo = point_direction(0,yi,0,yo);

if argument6 == 0
{
var xli = lengthdir_x(xdi,xdo);
var yli = yi;
}
else
{
var yli = lengthdir_y(ydi,ydo);
var xli = xi;
}
////////////////////////////////////
var xyi = point_direction(xli,yli,argument4,argument5);

window_set_caption(string(xli)+"   _   "+string(mouse_x));//+lengthdir_x(xdi,xyi)
