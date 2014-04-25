include <constants.scad>;

translate([0, 0, h_antiwarp/2])
cube([w_base + 2*hp_antiwarp, d_base + 2*hp_antiwarp, h_antiwarp], center=true);

translate([0, 0, h_lid_edge/2])
cube([w_base, d_base, h_lid_edge], center=true);

translate([0, 0, h_lid_edge + lid_inset/2])
cube([bb_w, bb_d + bb_to_back, lid_inset], center=true);
