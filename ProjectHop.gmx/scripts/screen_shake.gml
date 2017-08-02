randomize()
var shake_x = irandom_range(-shake,shake);
var shake_y = irandom_range(-shake,shake);

view_xview[0]=oPlyer.x-(view_wview[0]/2);
view_yview[0]=oPlyer.y-(view_hview[0]/2);

view_xview[0]=clamp(view_xview[0],0,room_width-view_wview[0]);
view_yview[0]=clamp(view_yview[0],0,room_height-view_hview[0]);

view_xview[0] += shake_x;
view_yview[0] += shake_y;

shake *= 0.9;
