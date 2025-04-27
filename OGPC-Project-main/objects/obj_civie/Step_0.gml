/// @description Insert description here
// You can write your code in this editor

y=y+ydir*fear;
x=x+xdir*fear;

if (place_meeting(x,y,obj_fire_par)) {
	if liv>1 {
		x = xprevious;
		y = yprevious;
		xdir*=-1;
		ydir*=-1;
		fear=2;
		liv-=1;
		alarm_set(1,180);
	}
	else {
		instance_destroy();
		global.mana+=0.75;
		}
}
if (place_meeting(x, y, obj_air)) {
	xdir=5;
	ydir=0;
	alarm_set(0,60);
}
if (place_meeting(x, y, obj_watertile)) {
	x = xprevious;
	y = yprevious;
	xdir*=-1;
	ydir*=-1;
	
}

if x>=1904||x<=0 {
	xdir = xdir*-1;
}
if y>=1072||y<=0 {
	ydir = ydir*-1;
}