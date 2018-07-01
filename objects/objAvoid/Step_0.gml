if( global.practiceVersion && keyboard_check_pressed( ord("D") ) ) {
    global.noDeath = !global.noDeath;
}

if (instance_exists(objPlayer)) //make sure player is alive before doing attacks
{
    if( timer % 25 == 0 ) {
        // Check music for sync.
        var musicPos = audio_sound_get_track_position( global.currentMusic ) * 50;
        if( abs( timer - musicPos ) > 25 ) {
            audio_sound_set_track_position( global.currentMusic, timer / 50 );
            audio_sound_pitch( global.currentMusic, 1 );
            isInSyncMode = false;
        } else if( abs( timer - musicPos ) > 10 ) {
            var pitchCoeff = 1;
            if( timer - musicPos > 0 ) { 
                pitchCoeff = lerp( 1, 2, ( timer - musicPos ) / 25 );
            } else {
                pitchCoeff = lerp( 1, 0.5, ( musicPos - timer ) / 25 );
            }
            audio_sound_pitch( global.currentMusic, pitchCoeff );
            isInSyncMode = true;
        } else if( isInSyncMode ) {
            audio_sound_pitch( global.currentMusic, 1 );
            isInSyncMode = false;
        }
    }
    
    if( timer == 4450 ) {
		global.currentPB = 4450;
        instance_create( 384, 608 - 96, objWarpNext );
        instance_destroy();
    }
    timer += 1; //increment the timer
    
} else {
    scrStopMusic();
}

