frame++;
if( frame == stopFrame ) {
    speed = 0;
    gravity = 0;
    angularSpeed = 0;
    acceleration = 0;
}

if( trailRate >= 0 ) {
    if( trailPrevSpawn + trailRate <= frame ) {
        trailPrevSpawn = frame;
        if( x >= 0 && x <= 800 && y >= 0 && y <= 608 ) {
            var obj = instance_create( x, y, trailObj );
            obj.image_blend = image_blend;
            obj.image_xscale = image_xscale;
            obj.image_yscale = image_yscale;
            obj.image_angle = image_angle;
            obj.shouldKill = trailShouldKill;
            obj.controller = trailController;
            obj.controllerIndex = trailControllerIndex;
        }
    }
}
direction += angularSpeed;
speed += acceleration;
image_angle += imageAngularSpeed;
if( controller != 0 ) {
    with( controller ) {
        event_user( other.controllerIndex );
    }
}

