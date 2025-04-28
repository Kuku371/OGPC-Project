/// @description Insert description here
// You can write your code in this editor
for (var dx = -1; dx < 2; ++dx) {
    for (var dy = -1; dy < 2; ++dy) {
		if irandom(2)==0{
			instance_create_layer(x+dx*16,y+dy*16,"Instances",obj_house_child);
		}
	}
}
if irandom(11) == 0{
	instance_create_layer(x,y,"Instances",obj_civie);
}
