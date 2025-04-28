/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_data);
draw_text(682,10,"Civies Remaining: " + string(civnum));
draw_text(10,10,"Mana: " + string(global.mana)+"/5.00");
draw_sprite_stretched(spr_manabar,0,13,50,(global.mana/5)*230,20)

if drawbg {
	draw_sprite(spr_pbg,0,0,0);
}