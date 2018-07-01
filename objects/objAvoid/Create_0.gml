//this boss uses its own internal timer to coordinate attacks, you could also use timelines to set attack timing instead of this method
randomize();
timer = 0;
if( global.practiceVersion ) {
    switch( global.startSegment ) {
        case 2: timer = 500; break; 
        case 3: timer = 950; break;
        case 4: timer = 1400; break;
        case 5: timer = 1820; break;
        case 6: timer = 2250; break;
        case 7: timer = 2800; break;
        case 8: timer = 3700; break;
    }
}
scrStopMusic();
scrPlayMusic(musAvoid,false);
if( timer > 0 ) {
    audio_sound_set_track_position( global.currentMusic, timer / 50 );
}
isInSyncMode = false;

global.noPause = true;  //make it so that the player can't pause during the boss

instance_create( 0, 0, objShaderDrawer );

shake = false;