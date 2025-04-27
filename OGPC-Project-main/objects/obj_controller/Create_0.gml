/// @description Insert description here
// You can write your code in this editor
global.mana = 0;
spell = 1;
drawbg = false;
pause=false;
randomize();
for (var i = 0; i < 200; ++i) {
    instance_create_layer(16*irandom_range(1,118),16*irandom_range(1,66),"Instances",obj_civie);
}
for (var i = 0; i < 8; ++i) {
	instance_create_layer(16*irandom_range(1,118),16*irandom_range(1,66),"Instances",obj_house_home);
}
font_enable_effects(fnt_data, true, {
    outlineEnable: true,
    outlineDistance: 2,
    outlineColour: c_black
});
civnum = instance_number(obj_civie);