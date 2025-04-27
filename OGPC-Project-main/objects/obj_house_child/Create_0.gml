/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_watertile)||place_meeting(x,y,obj_house_home){
	instance_destroy();
}
if irandom(11) == 0{
	instance_create_layer(x,y,"Instances",obj_civie);
}
alarm_set(0,900+irandom(300));