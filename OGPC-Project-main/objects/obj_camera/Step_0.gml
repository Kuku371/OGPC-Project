/// @description Insert description here
// You can write your code in this editor

if keyboard_check(ord("W"))&&move&&y-128>0{
	move=false;
	y=y-16;
	alarm_set(0,4);
}
if keyboard_check(ord("A"))&&move&&x-224>0{
	move=false;
	x=x-16;
	alarm_set(0,4);
}
if keyboard_check(ord("S"))&&move&&y+128<1080{
	move=false;
	y=y+16;
	alarm_set(0,4);
}
if keyboard_check(ord("D"))&&move&&x+224<1920{
	move=false;
	x=x+16;
	alarm_set(0,4);
}
