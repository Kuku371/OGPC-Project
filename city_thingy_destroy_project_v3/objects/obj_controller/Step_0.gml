/// @description Insert description here
// You can write your code in this editor
civnum = instance_number(obj_civie);
if global.mana<5{
	global.mana+=0.5/60;
}
if global.mana>5{
	global.mana=5;
}
if keyboard_check_pressed(ord("1")){
	spell = 1;
}
if keyboard_check_pressed(ord("2")){
	spell = 2;
}
if mouse_check_button_pressed(mb_left)&&pause==false{
	if global.mana>=5{
		global.mana-=5;
		if spell = 1 {
			instance_create_layer(obj_selector.x,obj_selector.y,"Instances",obj_fire_home);
		}
		else if spell = 2 {
			instance_create_layer(obj_selector.x,obj_selector.y,"Instances",obj_air);
		}
	}
}