shader_type canvas_item;
uniform sampler2D my_tex : hint_default_white;
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;

uniform vec4 multiply_color : source_color = vec4(0.0, 0.0, 0.0, 0.0);
void fragment() {
	vec4 input_color = texture(SCREEN_TEXTURE, SCREEN_UV);
    // Your sprite’s texture pixel
    vec4 tex = texture(TEXTURE, UV);
	
	COLOR.r = input_color.r * multiply_color.r;
	COLOR.b = input_color.b * multiply_color.b;
	COLOR.g = input_color.g * multiply_color.g;

}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
