shader_type canvas_item;

uniform vec4 base: hint_color;

void fragment() {
	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV);

	float i = (COLOR.r + COLOR.g + COLOR.b) / 3.0;

	//COLOR.rgb = vec3(i);

	//COLOR = mix(vec4(0,0,0,1), base, i);
}
