shader_type canvas_item;

void fragment() {
	float x = texture(SCREEN_TEXTURE, SCREEN_UV).r;
	
	x = clamp((x - 0.5) * 100.0, 0.0, 1.0);

	COLOR.rgb = mix(vec3(0.0), vec3(1.0), x);
}
