shader_type canvas_item;

uniform sampler2D backgroundTexture;
uniform sampler3D hatchTexture;

void fragment() {
	vec4 sample = texture(SCREEN_TEXTURE, SCREEN_UV);
	
	COLOR = vec4(1.0);
	
	vec2 random = vec2(sin(TIME*123456.78), cos(TIME*123456.78));

	// Фон
	vec2 background_uv = UV * vec2(800.0, 600.0) / vec2(3000.0, 2139.0);
	background_uv += random.yx;
	COLOR = texture(backgroundTexture, background_uv);

	// Штриховка
	float hatch_intensity = sample.b;
	vec2 hatch_uv = UV * 2.0;
	float hatch_w = mix(0.05, 0.9, hatch_intensity);
	
	vec2 random_r = vec2(cos(random.x * 3.14), sin(random.x * 3.14));
	hatch_uv = vec2(dot(hatch_uv, random_r), dot(hatch_uv, random_r.yx * vec2(1.0, -1.0)));
	hatch_uv += random * 4234.324;

	vec4 hatch_sample = texture(hatchTexture, vec3(hatch_uv, hatch_w));
	COLOR = mix(vec4(0.0), COLOR, hatch_sample.r);

	// Контуры
	float contour_intensity = sample.g;
	COLOR = mix(COLOR, vec4(0.0), contour_intensity);

	// Акцентный цвет
	float accent_intensity = sample.r;
	COLOR = mix(COLOR, vec4(1.0, 0.0, 0.0, 1.0), accent_intensity);

	COLOR.a = 1.0;
}
