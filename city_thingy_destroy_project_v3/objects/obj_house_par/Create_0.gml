/// @description Insert description here
// You can write your code in this editor
do {
	x=16*irandom_range(1,118);
	y=16*irandom_range(1,118);
} until (!place_meeting(x,y,obj_watertile))&&(distance_to_object(obj_house_home)>320)
alarm_set(0,1800);