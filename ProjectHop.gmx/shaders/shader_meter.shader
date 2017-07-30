attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec3 v_vPosition;
varying vec4 v_vColour;
varying vec2 v_vTexcoord;
void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    v_vPosition = in_Position;
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform float value;
varying vec3 v_vPosition;
varying vec4 v_vColour;
varying vec2 v_vTexcoord;

const vec3 cgv = vec3(0.2125,0.7154,0.0721);//0.2125,0.7154,0.0721

void main()
{
    //float comp = 1.-(value/100.);
    vec4 img = v_vColour * texture2D(gm_BaseTexture,v_vTexcoord);
    if (v_vTexcoord.y < value)
    {
     float lum = dot(img.rgb, cgv);
     float n_r = 0.5-img.r;
     float n_g = 0.5-img.g;
     float n_b = 0.5-img.b;
     float t_r = 0.9-abs(0.5-img.r);
     float t_g = 0.9-abs(0.5-img.g);
     float t_b = 0.9-abs(0.5-img.b);
     float t1 = n_r*t_r;
     float t2 = n_r*t_g;
     float t3 = n_r*t_b;
     img = vec4(lum-t1,lum-t2,lum-t3,img.a*0.6);
    }
    gl_FragColor=img;
}
