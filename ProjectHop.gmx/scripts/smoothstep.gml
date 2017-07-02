///smoothstep(x1, x2, val)
var t = clamp((argument2 - argument0) / (argument1 - argument0), 0.0, 1.0);
return t * t * (3.0 - 2.0 * t);
