include <constants.scad>;

dx = 16;
dy = 12;

difference() {
	union() {

		// floor
		translate([0, -h_outer/2, h_back_edge/2])
		cube([w_outer, h_outer, h_back_edge], center=true);

		// inset
		translate([0, -bb_bottom_to_wires_top/2 - h_floor, h_back_edge + back_inset/2])
		cube([bb_w, bb_bottom_to_wires_top, back_inset], center=true);
	}

	// antenna
	translate([dx, -h_floor - dy, 0])
	union() {
		translate([0, 0, t_antenna_hex/2 + t_antenna_washer + 0.01])
		cube([hex_diam_min, hex_diam_max, t_antenna_hex], center=true);

		cylinder(r=r_antenna, h=100, $fn=50);
	}

	// usb
	translate([-dx, -h_floor - dy, 0])
	cylinder(r=r_usb, h=100, $fn=50);
}
