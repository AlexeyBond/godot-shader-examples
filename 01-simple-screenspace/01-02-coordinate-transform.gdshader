shader_type canvas_item;

void fragment() {
	vec2 coord = SCREEN_UV;
	
	//coord.x += 0.01 * cos(TIME * 5.0 + coord.y * 20.0);

	//coord = coord - mod(coord, SCREEN_PIXEL_SIZE * 10.0);
	
	COLOR = texture(SCREEN_TEXTURE, coord);
}
