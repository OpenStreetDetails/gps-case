
hp = 6;
h_floor = 5;

// back wall
r_usb = 2.64;
r_antenna = 3.43;
t_antenna_hex = 5;
t_antenna_washer = 1.75;
t_back = t_antenna_hex + t_antenna_washer;
hex_diam_max = 12;
hex_diam_min = 8.25;

// breadboard
bb_w = 54.96;
bb_d = 83.14;
bb_h = 9.5;
bb_foot_w = 4.64;
bb_foot_d = 2.2;
bb_left_foot_offset = 14.556;
bb_bottom_foot_offset = 22.586;

bb_to_back = 83.66;
bb_bottom_to_wires_top = 32.7;

d_bb_bottom_support = hp;
lid_inset = 4;

h_lid_edge = 3;

back_inset = 5;
h_back_edge = t_back - back_inset;
dz_back_antenna = 12;
dy_back_antenna = 20;

w_base = bb_w + 2*hp;
d_base = hp + bb_d + bb_to_back + back_inset;
h_base = h_floor + bb_bottom_to_wires_top + lid_inset;

h_outer = h_base + h_lid_edge;
w_outer = w_base;
d_outer = d_base;

h_antiwarp = 0.25;
hp_antiwarp = 5;

d_backspace = d_base - hp - bb_d - d_bb_bottom_support;
