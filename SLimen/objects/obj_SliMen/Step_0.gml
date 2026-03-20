if keyboard_check(vk_left)
{
	x -= move_speed;
	if(place_meeting(x,y,obj_border_block)){
		x+=move_speed;
	}
	if(place_meeting(x,y,obj_room_block)){
		x+=move_speed;
	}
}
if keyboard_check(vk_right) 
{
	x += move_speed;
	if(place_meeting(x,y,obj_border_block)){
		x-=move_speed;
	}
	if(place_meeting(x,y,obj_room_block)){
		x-=move_speed;
	}
}
if keyboard_check(vk_up) 
{
	y -= move_speed;
	if(place_meeting(x,y,obj_border_block)){
		y+=move_speed;
	}
	if(place_meeting(x,y,obj_room_block)){
		y+=move_speed;
	}
}
if keyboard_check(vk_down)
{
	y += move_speed;
	if(place_meeting(x,y,obj_border_block)){
		y-=move_speed;
	}
	if(place_meeting(x,y,obj_room_block)){
		y-=move_speed;
	}
}
//Added a sprint ability
if (keyboard_check(vk_shift) && !sprinting && can_sprint){
		move_speed=move_speed*sprint_bonus;
		sprinting=true;
		can_sprint=false;
		alarm[0]=sprint_duration*room_speed;
		alarm[1]=sprint_cooldown*room_speed;
	
}

if (score = 100)
{
	sprite_index = spr_slimen2
}
else if (score = 200)
{
	sprite_index = spr_slimen3
}