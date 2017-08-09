///particle_update(ind,speed,dir,size,rot,r,g,b,a,blur)
var n = argument0;
for(var i = 0; i < PART_MAX[n]; ++i)
{
if (PART_T[n,i]==0)
{
 PART_F[n,i] += argument2;
 PART_X[n,i] += lengthdir_x(argument1,PART_F[n,i]);
 PART_Y[n,i] += lengthdir_y(argument1,PART_F[n,i]);
 PART_S[n,i] += argument3;
 PART_R[n,i] += argument4;
 PART_F[n,i] += argument2;
 PART_G1[n,i] += PART_G2[n,i]/10;
 PART_CR[n,i] += argument5;
 PART_CG[n,i] += argument6;
 PART_CB[n,i] += argument7;
 PART_CA[n,i] += argument8;
 
 ++P_D[n,i];
 var col = make_colour_rgb(PART_CR[n,i],PART_CG[n,i],PART_CB[n,i]);
 if P_E[n,i]==0 draw_sprite_blur(spr_part_img,PART_I[n],PART_X[n,i],PART_Y[n,i]+PART_G1[n,i],PART_S[n,i],PART_S[n,i],PART_R[n,i],col,PART_CA[n,i],argument9)
if (P_D[n,i]>=PART_D[n,i])
{
if (P_END[n]){P_E[n,i]=1}else
{
randomize();
    if (SHFT_X[n]) PART_X[n,i]=random_range(PR_X1[n],PR_X2[n]) else PART_X[n,i]=choose(PR_X1[n],PR_X2[n]);
    if (SHFT_Y[n]) PART_Y[n,i]=random_range(PR_Y1[n],PR_Y2[n]) else PART_Y[n,i]=choose(PR_Y1[n],PR_Y2[n]);
    if (SHFT_D[n]) PART_D[n,i]=irandom_range(PR_D1[n],PR_D2[n]) else PART_D[n,i]=choose(PR_D1[n],PR_D2[n]);
    if (SHFT_S[n]) PART_S[n,i]=random_range(PR_S1[n],PR_S2[n])/128 else PART_S[n,i]=choose(PR_S1[n],PR_S2[n])/128;
    if (SHFT_R[n]) PART_R[n,i]=random_range(PR_R1[n],PR_R2[n]) else PART_R[n,i]=choose(PR_R1[n],PR_R2[n]);
    if (SHFT_T[n]) PART_T[n,i]=irandom_range(PR_T1[n],PR_T2[n]) else PART_T[n,i]=choose(PR_T1[n],PR_T2[n]);
    if (SHFT_F[n]) PART_F[n,i]=irandom_range(PR_F1[n],PR_F2[n]) mod 360 else PART_F[n,i]=choose(PR_F1[n],PR_F2[n]) mod 360;
    if (SHFT_G[n]) PART_G2[n,i]=irandom_range(PR_G1[n],PR_G2[n]) else PART_G2[n,i]=choose(PR_G1[n],PR_G2[n]);
    if (SHFT_CR[n]) PART_CR[n,i]=random_range(PR_CR1[n],PR_CR2[n]) else PART_CR[n,i]=choose(PR_CR1[n],PR_CR2[n]);
    if (SHFT_CG[n]) PART_CG[n,i]=random_range(PR_CG1[n],PR_CG2[n]) else PART_CG[n,i]=choose(PR_CG1[n],PR_CG2[n]);
    if (SHFT_CB[n]) PART_CB[n,i]=random_range(PR_CB1[n],PR_CB2[n]) else PART_CB[n,i]=choose(PR_CB1[n],PR_CB2[n]);
    if (SHFT_CA[n]) PART_CA[n,i]=random_range(PR_CA1[n],PR_CA2[n]) else PART_CA[n,i]=choose(PR_CA1[n],PR_CA2[n]);
 PART_G1[n,i] = 0;
 P_D[n,i]=0;
}
}
}
else {PART_T[n,i]--}
}
