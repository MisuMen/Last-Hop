///scr_ShowMessage(string,ind)
if global.PROMPT==argument1
{
var c1 = make_colour_rgb(140,160,240);
draw_roundrect_colour_ext(xx+590,yy+290,xx+1330,yy+790,128,128,c_white,c_white,0)
draw_roundrect_colour_ext(xx+600,yy+300,xx+1320,yy+780,128,128,c1,c1,0)
draw_roundrect_colour_ext(xx+800,yy+680,xx+950,yy+750,64,64,c_white,c_white,0)
draw_roundrect_colour_ext(xx+970,yy+680,xx+1120,yy+750,64,64,c_white,c_white,0)

draw_set_halign(fa_middle)
draw_text_transformed_colour(xx+960,yy+350,argument0,0.75,0.75,0,c_white,c_white,c_white,c_white,1)

draw_text_transformed_colour(xx+875,yy+700,"SURE",0.5,0.5,0,c1,c1,c1,c1,1)
draw_text_transformed_colour(xx+1045,yy+700,"NOPE",0.5,0.5,0,c1,c1,c1,c1,1)
draw_set_halign(fa_left)
///////SELECTON//////
if (mouse_check_button_pressed(mb_left))
{
if (mouse_y > yy+670) && (mouse_y < yy+760)
{
 if (mouse_x > xx+800) && (mouse_x < xx+950)
 {
  game_restart()//SURE!
 }
 if (mouse_x > xx+970) && (mouse_x < xx+1120)
 {
  global.PROMPT=0//NOPE!
 }
}}
}
