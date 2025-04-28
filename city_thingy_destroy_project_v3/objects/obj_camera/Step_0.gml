/// @description Insert description here
// You can write your code in this editor

if keyboard_check(ord("W"))&&move&&y>camera_get_view_height(view_camera[0])/2{
	move=false;
	y=y-16;
	alarm_set(0,4);
}
if keyboard_check(ord("A"))&&move&&x>camera_get_view_width(view_camera[0])/2{
	move=false;
	x=x-16;
	alarm_set(0,4);
}
if keyboard_check(ord("S"))&&move{
	if y<2048-camera_get_view_height(view_camera[0])/2 {
		move=false;
		y=y+16;
		alarm_set(0,4);
	}
}
if keyboard_check(ord("D"))&&move&&x<2048-camera_get_view_width(view_camera[0])/2{
	move=false;
	x=x+16;
	alarm_set(0,4);
}
if y>2048-camera_get_view_height(view_camera[0])/2{
	y=2048-camera_get_view_width(view_camera[0])/2;
}
if y<camera_get_view_height(view_camera[0])/2{
	y=camera_get_view_height(view_camera[0])/2
}
if x>2048-camera_get_view_width(view_camera[0])/2{
	x=2048-camera_get_view_width(view_camera[0])/2;
}
if x<camera_get_view_width(view_camera[0])/2{
	x=camera_get_view_width(view_camera[0])/2
}
if mouse_wheel_up() {
	if camera_get_view_width(view_camera[0]) > 144
		camera_set_view_size(view_camera[0], camera_get_view_width(view_camera[0])/2,camera_get_view_height(view_camera[0])/2);
}
if mouse_wheel_down() {
	if camera_get_view_width(view_camera[0]) < 16*128
		camera_set_view_size(view_camera[0], camera_get_view_width(view_camera[0])*2,camera_get_view_height(view_camera[0])*2);
}