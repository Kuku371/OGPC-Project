/// @description Insert description here
// You can write your code in this editor
do {
	x=16*irandom_range(1,126);
	y=16*irandom_range(1,126);
} until (!place_meeting(x,y,obj_watertile))
liv = 4;
fear = 1;
xdir = choose(-0.5,0,0.5);
ydir = choose(-0.5,0,0.5);
alarm_set(0,150+irandom(150));
