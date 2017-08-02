///particle_set(ind,min x,max x,min y,max y,min size,max size,min rot,max rot,min dir,max dir,min grav,max grav)
randomize();
var n = argument0;
PR_X1[n]=argument1;
PR_X2[n]=argument2;
PR_Y1[n]=argument3;
PR_Y2[n]=argument4;
PR_S1[n]=argument5;
PR_S2[n]=argument6;
PR_R1[n]=argument7;
PR_R2[n]=argument8;
PR_F1[n]=argument9;
PR_F2[n]=argument10;
PR_G1[n]=argument11;
PR_G2[n]=argument12;
for(var i = 0; i < PART_MAX[n]; ++i)
{
    if (SHFT_X[n]) PART_X[n,i]=random_range(PR_X1[n],PR_X2[n]) else PART_X[n,i]=choose(PR_X1[n],PR_X2[n]);
    if (SHFT_Y[n]) PART_Y[n,i]=random_range(PR_Y1[n],PR_Y2[n]) else PART_Y[n,i]=choose(PR_Y1[n],PR_Y2[n]);
    if (SHFT_D[n]) PART_D[n,i]=irandom_range(PR_D1[n],PR_D2[n]) else PART_D[n,i]=choose(PR_D1[n],PR_D2[n]);
    if (SHFT_S[n]) PART_S[n,i]=random_range(PR_S1[n],PR_S2[n])/128 else PART_S[n,i]=choose(PR_S1[n],PR_S2[n])/128;
    if (SHFT_R[n]) PART_R[n,i]=random_range(PR_R1[n],PR_R2[n]) else PART_R[n,i]=choose(PR_R1[n],PR_R2[n]);
    if (SHFT_T[n]) PART_T[n,i]=irandom_range(PR_T1[n],PR_T2[n]) else PART_T[n,i]=choose(PR_T1[n],PR_T2[n]);
    if (SHFT_F[n]) PART_F[n,i]=irandom_range(PR_F1[n],PR_F2[n]) mod 360 else PART_F[n,i]=choose(PR_F1[n],PR_F2[n]) mod 360;
    if (SHFT_G[n]) PART_G2[n,i]=irandom_range(PR_G1[n],PR_G2[n]) else PART_G2[n,i]=choose(PR_G1[n],PR_G2[n]);
P_E[n,i] = 0;
P_D[n,i] = 0;
}
