/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_escape){
	if pause=false {
		var gstate = working_directory +"\Sprites\gstate.png";
		screen_save(gstate);
		spr_pbg = sprite_add(gstate,1,false,false,0,0);
		drawbg=true;
		pause=true;
		instance_deactivate_all(true);
	}
	else {
		instance_activate_all();
		pause = false;
		drawbg=false;
	}
}
