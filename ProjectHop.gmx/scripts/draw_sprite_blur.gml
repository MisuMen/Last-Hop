///draw_sprite_blur(sprite,subimage,x,y,xscale,yscale,rot,colour,alpha,blur)
var nx = argument9;
var ny = argument9;
var na = nx * ny;
for(var iy=-ny/2; iy<ny/2; iy++)
{
for(var ix=-nx/2; ix<nx/2; ix++)
{
 draw_sprite_ext(argument0,argument1,argument2+ix,argument3+iy,argument4,argument5,argument6,argument7,argument8*(1/na))
}
}
