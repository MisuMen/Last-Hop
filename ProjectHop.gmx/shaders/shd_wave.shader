uniform int nn;
uniform float size;
uniform float pos_x[6];
uniform float pos_y[6];

attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
void main()
{
    float form = 1.;
    //float high = 1.;
    for(int i=0; i<nn; ++i)
    {
    vec2 pos = vec2(pos_x[i],pos_y[i]);
    float dist = distance(pos,vec2(in_Position.x/size,(in_Position.y+64.)/128.0));
    float curve = smoothstep(0.4,0.6,dist*0.6);
    form *= curve;
    }
    float ydense = ((in_Position.y+64.)* -form);
    
    vec4 object_space_pos = vec4( in_Position.x, ydense+128., in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
