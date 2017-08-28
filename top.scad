$fn=100;
include <roundCornersCube.scad>

difference() {

    translate([0,0,2.25]) roundCornersCube(70,35,5.5,4, true);
    translate([0,0,-0.10]) cube([66,31,1.7], true);
    
       // Camera connector
    translate([30.5,0,0.7]) cube([6,18,2.51],true);
    
    // espacio para los componentes pequeños
    translate([-.5,0,1.25]) cube([51,26,4],true);
    translate([0,0,1.25]) cube([65,16.5,4],true);

    // micro usbs
    translate([14,-12.2,1.4]) cube([23,9,4.5],true);
    
    // espacio para el hdmi
    translate([-20,-12.7,1.4]) cube([12,8,4.5],true);
    
    // espacio para la microsd
    translate([-32,2,1]) cube([10,12,4.5],true);
    translate([-33.1,2,1.1]) cube([4,12,8],true);
    
union () {
    // Pi Zero
    import ("raspberry_pi_zero_placeholder_V3_caliper_measured.stl");
 
    // USB
    translate([32,0,-2.95]) cube([19,13,4.5], true);    
   
    // PowerButton
    translate([-6.6,10,3]) cube([6.5,6.5,5.5], true);
    translate([-6.6,10,5]) cylinder(2,d=3.5,true);
}


// agujeros tornillos
translate([29,11.5,-7]) cylinder(15,d=2.65,true); 
translate([29,-11.5,-7]) cylinder(15,d=2.65,true);
translate([-29,11.5,-7]) cylinder(15,d=2.65,true); 
translate([-29,-11.5,-7]) cylinder(15,d=2.65,true);

translate([29,11.5,2.7]) cylinder(3.5,d=5,true); 
translate([29,-11.5,2.7]) cylinder(3.5,d=5,true);
translate([-29,11.5,2.7]) cylinder(3.5,d=5,true); 
translate([-29,-11.5,2.7]) cylinder(3.5,d=5,true);


// agujero LED
translate([27.7,-7,-7]) cylinder(15,d=2.5,true);
}