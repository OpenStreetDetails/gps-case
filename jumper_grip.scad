w = 11.8;
d = 3.05;
h = 6;
padding = 2.2;

translate([0, 0, h/2])
difference() {
	cube([w + 2*padding, d + 2*padding, h], center=true);
	cube([w, d, h], center=true);
}
