/// @description Insert description here
// You can write your code in this editor
global.mana = 0;
global.exp = 0;
spell = 1;
drawbg = false;
pause=false;
randomize();
for (var i = 0; i < 50; ++i) {
    instance_create_layer(16*irandom_range(1,126),16*irandom_range(1,126),"Instances",obj_civie);
}
for (var i = 0; i < 6; ++i) {
	instance_create_layer(16*irandom_range(1,126),16*irandom_range(1,126),"Instances",obj_house_home);
}
font_enable_effects(fnt_data, true, {
    outlineEnable: true,
    outlineDistance: 2,
    outlineColour: c_black
});
civnum = instance_number(obj_civie);