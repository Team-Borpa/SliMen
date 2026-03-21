
show_debug_message("Villain destroyed, sound_tracking_played = " + string(sound_tracking_played));
sound_alert_played = false;   
sound_tracking_played = false; 
chasing_player=false;
tracking_sound_id = -1;

audio_play_sound(Villain3_Death,0,false);