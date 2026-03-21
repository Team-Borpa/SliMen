if (sprite_index != spr_SliMen and sprite_index !=spr_slimen2)
{
	instance_destroy(other)
	score += 100;
}
else
{
	hspeed=0;
	vspeed=0;
	move_speed=0;
	sprite_index=spr_death1;
	audio_play_sound(mp3_deathsound,0,false);
	evolution=0;
	//THis is intentional so players dont just sit level 1 and farm points for free
	global.Level_Tracker+=1;
	alarm[3]=room_speed*.45;
}