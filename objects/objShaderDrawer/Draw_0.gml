var drawObjectsLength = array_length_1d( drawObjects );
if( drawObjectsLength > 0 ) {
    if( shader_is_compiled( hsvShader ) ) {
        shader_set(hsvShader);
        for( var i = 0; i < drawObjectsLength; i++ ) {
            with( drawObjects[i] ) {
                draw_self();
            }
        }
        shader_reset();
    } else {
        show_debug_message("Shader failed");
    }
}
drawObjects = 0;
drawObjectsIndex = 0;

