if (global.villain1_count==0 && global.villain2_count==0){
    instance_destroy(other);
    score += 500;

    // Decrement global villain counter safely
    global.villains_tracking = max(global.villains_tracking - 1, 0);

    // If no villains are tracking, resume or play main soundtrack
    if(global.villains_tracking == 0){
        audio_resume_all();
    }
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
	alarm[3]=1;
}