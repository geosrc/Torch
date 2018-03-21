// Base of the torch shell

// Center cylinder parameter
ls_l = 140;
wall_cylinder = 0.8;
radius_cylinder = ls_l / (2* PI);

wall = 1.6;

// Inner rim of the base
radius_rim = radius_cylinder - wall_cylinder;
height_rim = 10;

// Cutout
c_h = height_rim + 3;
c_w = 5;

// Base plate
//circle( r = 50, $fn = 6 );
cylinder( h = wall, r = 50, $fn = 6 );

difference() {
    cylinder(h = height_rim, r = radius_rim, $fn=100);
    translate([0, 0, -3])
    cylinder(h = height_rim + 6, r = radius_rim-wall, $fn=100);

    rotate( [ 0, 0, 30 ] )
    translate( [radius_rim, 0, c_h / 2 - 1] )
    cube( size = [ 5, c_w, c_h ], center = true );
    
    //translate( [dx, -c_w/2, dz] )
    //cube( size = [ 5, c_w, 20 ], center = false );
}