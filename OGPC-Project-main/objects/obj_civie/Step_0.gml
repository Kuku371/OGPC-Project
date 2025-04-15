/// @description Insert description here
// You can write your code in this editor

y=y+ydir*fear;
x=x+xdir*fear;


if (distance_to_object(obj_fire_par) <= 48) {
    fear = 2;
	if x<=obj_fire_par.x {
		xdir = -0.5;
	}
	else {
		xdir = 0.5;
	}
	if y<=obj_fire_par.y {
		ydir = -0.5;
	}
	else {
		ydir = 0.5;
	}
	alarm_set(0,150+irandom(150));
	alarm_set(1,300);
}
if (place_meeting(x, y, obj_fire_par)) {
	instance_destroy();
}
if (place_meeting(x, y, obj_air)) {
	xdir=5;
	ydir=0;
	alarm_set(0,60);
}

if x>=1904||x<=0 {
	xdir = xdir*-1;
}
if y>=1072||y<=0 {
	ydir = ydir*-1;
}