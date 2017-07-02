///scr_path_y(x1,y1,x2,y2,x,y)
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
var xli = xi+lengthdir_x(xdi,xdo);
var yli = yi;
}
else
{
var yli = yi+lengthdir_y(ydi,ydo);
var xli = xi;
}
////////////////////////////////////
var xyi = point_direction(xli,yli,argument4,argument5);

return yli+lengthdir_y(ydi,xyi);
