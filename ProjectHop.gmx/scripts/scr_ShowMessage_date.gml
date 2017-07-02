///scr_ShowMessage_date(string,ind)
if global.PROMPT==argument2
{
var c1 = make_colour_rgb(140,160,240);
var desig_hour = global.DATE;
var desig_minute = 0;
var desig_second = 0;
var curr = date_current_datetime()
//convert current time to seconds
var current_time_in_seconds = ( date_get_hour(curr) * 3600 ) + ( date_get_minute(curr) * 60 ) + date_get_second(curr);
var desig_time_in_seconds =  ( desig_hour * 3600 ) + ( desig_minute * 60 ) + desig_second;
var time1 = desig_time_in_seconds - current_time_in_seconds;

var timer_hours = floor(time1 / 3600) mod 24;
if timer_hours <10 var hour = '0'+string(timer_hours); else var hour = string(timer_hours);
var timer_mins = floor(time1 / 60) mod 60;
if timer_mins <10 var minute = '0'+string(timer_mins); else var minute = string(timer_mins);
var timer_secs =  floor(time1 - (timer_hours * 3600 ) - (timer_mins * 60 )) mod 60;
if timer_secs <10 var sec = '0'+string(timer_secs); else var sec = string(timer_secs);

if temp_phase == 0 
{
 slide_down+=20
 if slide_down > 500 {temp_phase=1}
}
if temp_phase==1
{
 temp_timer+=2
 if temp_timer > 1000 {temp_phase=2}
}
if temp_phase==2
{
 slide_down-=20
 if slide_down < 0
 {
  global.PROMPT=0//NOPE!
  oButtons.date_display=0
  temp_phase=0
  slide_down=0
  temp_timer=0
 }
}
draw_set_halign(fa_left)
draw_background_ext(temp2,xx,yy-540+slide_down,1,0.5,0,-1,1)
draw_roundrect_colour_ext(xx+705,yy-320+slide_down,xx+1200,yy-250+slide_down,64,64,c_white,c_white,0)
draw_roundrect_colour_ext(xx+715,yy-310+slide_down,xx+1190,yy-260+slide_down,64,64,c1,c1,0)

draw_text_transformed_colour(xx+20,yy-480+slide_down,argument0,0.9,0.9,0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_colour(xx+1220,yy-480+slide_down,argument1,0.9,0.9,0,c_white,c_white,c_white,c_white,1)
draw_set_halign(fa_middle)
draw_text_transformed_colour(xx+960,yy-305+slide_down,"Touch to go to the cricket shop",0.5,0.5,0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_colour(xx+960,yy-480+slide_down,string(hour)+':'+string(minute)+':'+string(sec),2,2,0,c_white,c_white,c_white,c_white,1)
draw_set_halign(fa_left)
///////SELECTON//////
if (mouse_check_button_pressed(mb_left))&&(temp_phase==1)
{
    if (mouse_y > yy) && (mouse_y < yy+400)
    {
      game_restart()//SURE!
    }
}
}
