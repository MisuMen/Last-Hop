attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;

    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform float life;
uniform float vida;
uniform float tick;
uniform float maxi;
varying vec2 v_vTexcoord;
const float o = 0.000001;

void main()
{
    vec4 col = vec4(0.,0.65,0.2,1.0);
    float rr = clamp(life/maxi,0.,0.7);
    float bb = clamp((life/maxi)-0.5,0.,0.7);
    if (vida < tick+o) 
    {
     if (vida > tick-o) {col = vec4(rr,0.65,bb+0.2,1.0);}
    }
    if (vida > 4.+o)
    {
     col = vec4(rr,0.65,bb+0.2,1.0);
    }
    gl_FragColor = col * texture2D( gm_BaseTexture, v_vTexcoord );
}
