thickness = .5;
magnetRadius = 6.70/2;
fingerRadius = 18/2;
height = magnetRadius * 2;
magnetHeight = 1.7;
fingerRadiusOut = fingerRadius + thickness + magnetHeight;


difference() {
cylinder(height, fingerRadiusOut, fingerRadiusOut, $fn=500);
cylinder(height, fingerRadius, fingerRadius, $fn=500);
rotate([90, 0, 0]) translate([0 , height / 2, fingerRadius -magnetHeight / 2 ]) cylinder(magnetHeight * 1.5, magnetRadius, magnetRadius, $fn=500);
}

