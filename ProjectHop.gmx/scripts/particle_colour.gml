///particle_colour(ind,min r,max r,min g,max g,min b,max b,min a,max a)
randomize();
var n = argument0;
PR_CR1[n]=argument1;
PR_CR2[n]=argument2;
PR_CG1[n]=argument3;
PR_CG2[n]=argument4;
PR_CB1[n]=argument5;
PR_CB2[n]=argument6;
PR_CA1[n]=argument7;
PR_CA2[n]=argument8;

for(var i = 0; i < PART_MAX[n]; ++i)
{

    if (SHFT_CR[n]) PART_CR[n,i]=random_range(PR_CR1[n],PR_CR2[n]) else PART_CR[n,i]=choose(PR_CR1[n],PR_CR2[n]);
    if (SHFT_CG[n]) PART_CG[n,i]=random_range(PR_CG1[n],PR_CG2[n]) else PART_CG[n,i]=choose(PR_CG1[n],PR_CG2[n]);
    if (SHFT_CB[n]) PART_CB[n,i]=random_range(PR_CB1[n],PR_CB2[n]) else PART_CB[n,i]=choose(PR_CB1[n],PR_CB2[n]);
    if (SHFT_CA[n]) PART_CA[n,i]=random_range(PR_CA1[n],PR_CA2[n]) else PART_CA[n,i]=choose(PR_CA1[n],PR_CA2[n]);
}
