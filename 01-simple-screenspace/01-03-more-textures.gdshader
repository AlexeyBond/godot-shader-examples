shader_type canvas_item;

uniform sampler2D anotherTexture;

void fragment() {
	vec4 sample = texture(anotherTexture, UV);
	
	vec2 coord = SCREEN_UV;

	//coord.x += 0.02 * sin(TIME * 5.0 + coord.y * 30.0) * pow(sample.r, 2);

	COLOR = texture(SCREEN_TEXTURE, coord);
	
	//COLOR.rgb *= sample.rgb;
}
