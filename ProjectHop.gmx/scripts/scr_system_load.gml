///scr_system_load(world,stage)
var ww = argument0;
var ll = argument1;
var d1,d2,d3,d4,d5,d6;

ini_open("system.ini")
d1 = ini_read_real('player','l',0)
d2 = ini_read_real('player','s',0)
//////////////////////////////////
d3 = ini_read_real(LVL[ww,ll],'check_p',0)
d4 = ini_read_real(LVL[ww,ll],'check_x',0)
d5 = ini_read_real(LVL[ww,ll],'check_y',0)
d6 = ini_read_real(LVL[ww,ll],'highscore',0)
ini_close()
lives = d1;
score = d2;
if (d3)
{
oPlyer.x = d4;
oPlyer.y = d5;
}
return d6;
