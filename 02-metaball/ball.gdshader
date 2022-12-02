shader_type canvas_item;
render_mode blend_add;


void fragment() {
	vec2 p = UV * 2.0 - vec2(1.0);
	
	float i = min(dot(p,p), 1.0);

	COLOR = mix(vec4(1.0), vec4(0.0), i);
}
