/// @description Inserte aquí la descripción
if (keyboard_check(ord("D")) or keyboard_check(vk_right)){
	x = x+spd;
	sprite_index = spr_bat_man_running;
	image_xscale = 1;
}
else if(keyboard_check(ord("A")) or keyboard_check(vk_left)){
	x = x - spd;
	sprite_index = spr_bat_man_running;
	image_xscale = -1;
}
else if(keyboard_check(ord("W")) or keyboard_check(vk_up)){
	y = y - spd;
	sprite_index = spr_bat_man_running;
}
else if(keyboard_check(ord("S")) or keyboard_check(vk_down)){
	y = y +  spd;
	sprite_index = spr_bat_man_running;
}
else{
	sprite_index = spr_bat_man_idle;
}

if (hp<=0)
{
	room_goto(GameOver);
}

show_debug_message(hp);


