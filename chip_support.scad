w = 5;
d = 25.8;
h_base = 2.05;
h_pin = 2;
pin_diameter = 1.8 - 0.4;
pin_offset = 10 + (0.75 - 0.1)/2;

translate([0, 0, h_base/2])
cube([w, d, h_base], center=true);

for (ysign = [-1, 1]) {
	translate([0, ysign*pin_offset, 0 + h_base + h_pin/2])
	cylinder(r=pin_diameter/2, h=h_pin, center=true, $fn=50);
}
