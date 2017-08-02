///particle_dead(ind)
var n = argument0;
var d = 0;
for(var i = 0; i < PART_MAX[n]; ++i)
{
 d += P_E[n,i];
}
if (d == PART_MAX[n]) return 1; else return 0;
