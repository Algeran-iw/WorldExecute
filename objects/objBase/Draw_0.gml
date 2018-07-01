if( shouldUseHSVShader ) {
    if( instance_exists( objShaderDrawer ) ) {
        with( objShaderDrawer ) {
            drawObjects[drawObjectsIndex] = other.id;
            drawObjectsIndex++;
        }
    }
} else {
    draw_self();
}

