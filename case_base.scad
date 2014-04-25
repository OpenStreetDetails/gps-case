include <constants.scad>;

difference() {

	union() {
		translate([0, -d_base/2, h_base/2])
		cube([w_base, d_base, h_base], center=true);

		translate([0, -(d_base)/2, h_antiwarp/2])
		cube([w_base + 2*hp_antiwarp, d_base + 2*hp_antiwarp, h_antiwarp], center=true);
	}

	translate([0, -hp - bb_d/2, h_floor + (h_base - h_floor)/2])
	cube([bb_w, bb_d, h_base - h_floor], center=true);

	// left feet
	for (ysign = [-1, 1]) {
		// TEMP: + 0.5
		translate([
			-bb_w/2,
			-hp - bb_d/2 - ysign*(bb_d/2 - bb_left_foot_offset) + 0.5,
			h_floor + (h_base - h_floor)/2])
		cube([bb_foot_d*2, bb_foot_w, h_base - h_floor], center=true);
	}

	// bottom feet
	for (xsign=[-1, 0, 1]) {
		translate([
			xsign*bb_bottom_foot_offset,
			-hp -bb_d,
			h_floor + (h_base - h_floor)/2])
		cube([bb_foot_w, bb_foot_d*2, h_base - h_floor], center=true);
	}

	// space above bb bottom edge
	translate([
		0,
		-hp - bb_d - d_bb_bottom_support/2,
		h_floor + bb_h + (h_base - (h_floor + bb_h))/2])
	cube([bb_w, d_bb_bottom_support, h_base - (h_floor + bb_h)], center=true);

	// back space
	translate([
		0,
		d_backspace/2 - d_base,
		h_floor + (h_base - h_floor)/2
	])
	cube([bb_w, d_backspace + 0.001, h_base - h_floor], center=true);
}
