// Center cylinder of the torch shell
ls_h = 12.1;
ls_l = 140;
wall = 0.8;
p_h = 7 * 12.1;
total_h = p_h + 10;
radius = ls_l / (2* PI);

// Cutout
c_h = 7;
c_w = 5;
dz = total_h - p_h +1;
dx = radius - c_w + 1;

difference() {
    cylinder(h = total_h, r = radius, $fn=100);
    translate([0, 0, -3])
    cylinder(h = total_h + 6, r = radius-wall, $fn=100);

    translate( [radius, 0, c_h / 2 - 1] )
    cube( size = [ 5, c_w, c_h ], center = true );
    
    translate( [dx, -c_w/2, dz] )
    cube( size = [ 5, c_w, 20 ], center = false );
}


//translate( [radius, 0, c_h / 2 - 1] );

color( "Fuchsia" ) {

}