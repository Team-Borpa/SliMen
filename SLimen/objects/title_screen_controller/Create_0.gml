global.game_over=false

view_enabled = true;
view_visible[0] = true;
view_xview[0] = 0;
view_yview[0] = 0;
view_wview[0] = 1920;
view_hview[0] = 1080;
audio_play_sound(TitleSong, 0, true);

if (!window_get_fullscreen()) {      
    window_set_fullscreen(true);
}