draw_set_color(c_white);
draw_set_font(fontEnd);
draw_set_halign(fa_center);

if( global.practiceVersion ) {
    draw_text( 400, 100, string_hash_to_newline("Thank you for testing!") );
} else {
    draw_text( 400, 100, string_hash_to_newline("Thank you for playing!") );
}

draw_set_font(fontEndSmall);

draw_set_halign(fa_right);
draw_text( 800 - 64, 608 - 96, string_hash_to_newline("Playtest: Vengevine1141") );
draw_text( 800 - 64, 608 - 64, string_hash_to_newline("Created by: Algeran") );

