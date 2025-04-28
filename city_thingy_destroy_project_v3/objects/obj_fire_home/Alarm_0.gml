/// @description Insert description here
// You can write your code in this editor
for (xx=-1; xx<2; xx++) {
	var _xran = irandom(5);
	if _xran<3 && xx!=0 {
		instance_create_layer(x+xx*16,y,"Instances",obj_fire_child);
	}
	else if _xran>3 && xx!=0{
		continue;
	}
	else if _xran=3{
		instance_create_layer(x+xx*16,y*16,"Instances",obj_fire_home);	
	}
}
for (yy=-1; yy<2; yy++ ) {
	var _yran = irandom(5);
	if _yran<3 && yy!=0 {
		instance_create_layer(x,y+yy*16,"Instances",obj_fire_child);
	}
	else if _yran>3 && yy!=0{
		continue;
	}
	else if _yran=3{
		instance_create_layer(x,y+yy*16,"Instances",obj_fire_home);	
	}
}
alarm_set(1,180);