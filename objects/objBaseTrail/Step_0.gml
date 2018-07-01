if( frame == lifetime ) {
    instance_destroy();
}
with( parent ) {
    other.lastParentXScale = image_xscale;
    other.lastParentYScale = image_yscale;
}
image_xscale = ( lifetime - frame ) / lifetime * lastParentXScale;
image_yscale = ( lifetime - frame ) / lifetime * lastParentYScale;

