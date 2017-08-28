$fn=100;

include <roundCornersCube.scad>;
include <nutsnbolts/cyl_head_bolt.scad>;

difference() {
    translate([0,0,-4]) roundCornersCube(70,35,7,4, true);
    translate([0,0,-0.5]) cube([66,31,1.6], true);
    translate([0,0,-2.95]) cube([51,26,4.5], true);
    translate([-4,0,-2.95]) cube([52,16,4.5], true);
    
    // USB
    translate([37.5,0,-2.95]) cube([19,13,4.5], true);
    translate([37.5,0,-1.95]) cube([19,13,4.5], true);
    //translate([30,0,-.6]) cube([19,13,4.5], true);
    translate([10,0,-2.95]) cube([52,9.5,4.5], true);
    translate([29,5.75,0]) cube ([2,1.5,13],true);
    translate([29,-5.75,0]) cube ([2,1.5,13],true);
    
    // wiring
    translate([14,-3.75,-1.25]) cube([22,22,1.5],true);
    
union () {
    // Pi Zero
    import ("raspberry_pi_zero_placeholder_V3_caliper_measured.stl");
    // Camera connector
    translate([30.5,0,1.25]) cube([6,18,1.5],true);
      
    // wiring
    translate([14,-3.75,-1.25]) cube([22,22,1.5],true);
    
    // PowerButton
    translate([-6.12,9.5,3]) cube([6.5,6.5,5.5], true);
    translate([-6.12,9.5,5]) cylinder(2,d=3.5,true);
}
//}

// agujeros tornillos
translate([29,11.5,-9]) cylinder(15,d=2.65,true); 
translate([29,-11.5,-9]) cylinder(15,d=2.65,true);
translate([-29,11.5,-9]) cylinder(15,d=2.65,true); 
translate([-29,-11.5,-9]) cylinder(15,d=2.65,true);

// agujeros tuercas
translate([29,11.5,-3.4]) nutcatch_parallel("M2.5", l=5, clk=0.3); 
translate([29,-11.5,-3.4]) nutcatch_parallel("M2.5", l=5, clk=0.3);
translate([-29,11.5,-3.4]) nutcatch_parallel("M2.5", l=5, clk=0.3); 
translate([-29,-11.5,-3.4]) nutcatch_parallel("M2.5", l=5, clk=0.3);

}