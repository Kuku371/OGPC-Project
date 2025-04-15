/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_data);
draw_text(1550,10,"Civies Remaining: " + string(civnum));

if drawbg {
	draw_sprite(spr_pbg,0,0,0);
}