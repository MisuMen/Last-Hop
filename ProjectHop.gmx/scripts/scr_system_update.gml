///scr_system_update(world,stage,checkpoint?,x,y)
var ww = argument0;
var ll = argument1;
ini_open("system.ini")
ini_write_real('player','l',lives)
ini_write_real('player','s',score)
//////////////////////////////////
ini_write_real(LVL[ww,ll],'check_p',argument2)
ini_write_real(LVL[ww,ll],'check_x',argument3)
ini_write_real(LVL[ww,ll],'check_y',argument4)
ini_write_real(LVL[ww,ll],'highscore',argument5)
ini_close()
