///scr_ShowStatus()
 var star = 0;//global.RANK;
 var c1 = make_colour_rgb(140,160,240);
 draw_roundrect_colour_ext(xx+590,yy+190,xx+1330,yy+990,128,128,c_white,c_white,0)
 draw_roundrect_colour_ext(xx+600,yy+200,xx+1320,yy+980,128,128,c1,c1,0)
if anim0 < 200 {++anim0}
if anim0>10 
{
 if tr_anim1 == 0 { if anim1 < 4 anim1+=0.1 else tr_anim1=1}
 if tr_anim1 == 1 { if anim1 > 0 anim1-=0.1 else tr_anim1=0}
}
if anim0>10 
{
 if tr_anim2 == 0 { if anim2 < 4 anim2+=0.1 else tr_anim2=1}
 if tr_anim2 == 1 { if anim2 > 0 anim2-=0.1 else tr_anim2=0}
}
if anim0>10 
{
 if tr_anim3 == 0 { if anim3 < 4 anim3+=0.1 else tr_anim3=1}
 if tr_anim3 == 1 { if anim3 > 0 anim3-=0.1 else tr_anim3=0}
}
if anim0>10 
{
 if tr_anim4 == 0 { if anim4 < 4 anim4+=0.1 else tr_anim4=1}
 if tr_anim4 == 1 { if anim4 > 0 anim4-=0.1 else tr_anim4=0}
}
if anim0>10 
{
 if tr_anim5 == 0 { if anim5 < 4 anim5+=0.1 else tr_anim5=1}
 if tr_anim5 == 1 { if anim5 > 0 anim5-=0.1 else tr_anim5=0}
}
if anim0>10 
{
 if tr_anim6 == 0 { if anim6 < 4 anim6+=0.1 else tr_anim6=1}
 if tr_anim6 == 1 { if anim6 > 0 anim6-=0.1 else tr_anim6=0}
}
if anim0>10 
{
 if tr_anim7 == 0 { if anim7 < 4 anim7+=0.1 else tr_anim7=1}
 if tr_anim7 == 1 { if anim7 > 0 anim7-=0.1 else tr_anim7=0}
}
draw_set_valign(fa_center)
draw_text_transformed_colour(xx+810,yy+280+anim1,"V",1+(anim1/8),1+(anim1/8),0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_colour(xx+860,yy+280+anim2,"I",1+(anim2/8),1+(anim2/8),0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_colour(xx+910,yy+280+anim3,"C",1+(anim3/8),1+(anim3/8),0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_colour(xx+960,yy+280+anim4,"T",1+(anim4/8),1+(anim4/8),0,c_white,c_white,c_white,c_white,1)//
draw_text_transformed_colour(xx+1010,yy+280+anim5,"O",1+(anim5/8),1+(anim5/8),0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_colour(xx+1060,yy+280+anim6,"R",1+(anim6/8),1+(anim6/8),0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_colour(xx+1110,yy+280+anim7,"Y",1+(anim7/8),1+(anim7/8),0,c_white,c_white,c_white,c_white,1)
 draw_set_valign(fa_top)
 draw_set_halign(fa_left)
 draw_text_transformed_colour(xx+650,yy+330,"highscore: ",0.75,0.75,0,c_white,c_white,c_white,c_white,1)
 draw_text_transformed_colour(xx+650,yy+390,"score: ",0.75,0.75,0,c_white,c_white,c_white,c_white,1)
 draw_text_transformed_colour(xx+650,yy+450,"seeds: ",0.75,0.75,0,c_white,c_white,c_white,c_white,1)
 draw_text_transformed_colour(xx+650,yy+510,"enemies: ",0.75,0.75,0,c_white,c_white,c_white,c_white,1)
 draw_text_transformed_colour(xx+650,yy+570,"exp: ",0.75,0.75,0,c_white,c_white,c_white,c_white,1)
 draw_text_transformed_colour(xx+650,yy+630,"level: ",0.75,0.75,0,c_white,c_white,c_white,c_white,1)
 draw_set_halign(fa_right)
 
if sign(statistic1) 
{
 if statistic1==1 
 {
  s_count1++
  if global.SCORE_1 <= s_count1 {global.SCORE_1 = s_count1}
  if s_count1 == score{statistic1 = 2; statistic2=1; global.SCORE_2+=global.SCORE_1}
 }
 draw_text_transformed_colour(xx+1280,yy+330,string(global.SCORE_1),0.75,0.75,0,c_white,c_white,c_white,c_white,1)
 draw_text_transformed_colour(xx+1280,yy+390,string(s_count1),0.75,0.75,0,c_white,c_white,c_white,c_white,1)
}
if sign(statistic2)
{
 if (statistic2==1)
 {
  s_count2++; 
  if s_count2 >= seed_collect {statistic2 = 2; statistic3=1};
 }
 draw_text_transformed_colour(xx+1280,yy+450,string(s_count2),0.75,0.75,0,c_white,c_white,c_white,c_white,1)
}
if sign(statistic3)
{
 if (statistic3==1)
 {
  s_count3++; 
  if s_count3 >= global.MOB_KILL {statistic3 = 2; statistic4=1};
 }
 draw_text_transformed_colour(xx+1280,yy+510,string(s_count3),0.75,0.75,0,c_white,c_white,c_white,c_white,1)
}
if sign(statistic4)
{
 if statistic4==1 
 {
  if s_count4 < ((s_count3*10)+(s_count2*10)){++s_count4; global.XP++}
  if global.XP >= global.NXT {global.XP = 0; global.NXT+=500; global.HP_MAX+=10; global.LEVEL++}
  if s_count4 >= ((s_count3*10)+(s_count2*10)) {statistic4 = 2; statistic5=1}
 }
 draw_text_transformed_colour(xx+1280,yy+570,string(global.XP)+" / "+string(global.NXT),0.75,0.75,0,c_white,c_white,c_white,c_white,1)
}
if sign(statistic5)
{
 if statistic5==1 
 {
  s_count5++
  if s_count5 >= 100 {statistic5 = 2; statistic6=1}
 }
 draw_text_transformed_colour(xx+1280,yy+630,string(global.LEVEL),0.75,0.75,0,c_white,c_white,c_white,c_white,1)
}
draw_set_halign(fa_middle)
draw_text_colour(xx+960,yy+650,"__________________",c_white,c_white,c_white,c_white,1)
if sign(statistic6)
{
 ///Star rank goes here
 if global.MOB_KILL > global.MOB - 2 {star++}///star
 if s_count2 > 38 {star++}///seeds
 if duration < 10000 {star++}
 if global.RANK >= star {star = global.RANK}else{global.RANK = star}
 statistic7=1
}
draw_sprite_ext(spr_stars,star,xx+960,yy+810,0.9,0.9,0,-1,1)///stars
if sign(statistic7)
{
draw_text_transformed_colour(xx+960,yy+910,"Touch to continue!",0.5,0.5,0,c_white,c_white,c_white,c_white,1)
if (mouse_check_button_pressed(mb_left))
{
 with(oPlyer){alarm[8]=30; stall=2;}
}
}
