uniform sampler2D u_texture;
uniform float u_time;

varying vec2 v_uv;

void main(){
    vec3 color = texture2D(u_texture, vec2(v_uv.x * -1.0 + 1.0, v_uv.y)).rgb;

    gl_FragColor = vec4(color * 1.5, 1.0);
}