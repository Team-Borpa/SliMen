global.timer_seconds = 90;



// Resume main music if it was paused
if (!audio_is_playing(global.MainMusicChannel)) {
    audio_resume_sound(global.MainMusicChannel);
}

// Reset villains tracking
global.villains_tracking = 0;