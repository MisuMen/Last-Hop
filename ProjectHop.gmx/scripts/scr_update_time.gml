///scr_update_time()
L_L-=0.02

if L_L < 0
{
 S_S-=1
 L_L=60
}
if S_S < 0
{
 M_M-=1
 S_S=59
}

if L_L==0 && S_S==0 && M_M==0
{
 L_L=0
 S_S=0
 M_M=0
 if oPlyer.DIE==0
 {
 hsp = 0;
 alarm[1]=40;
 DIE = 1;
 }
}
