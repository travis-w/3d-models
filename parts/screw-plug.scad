// Define parameters
base_outer_diameter = 16;   // Outer diameter of the cylinder in mm
base_inner_diameter = 12;   // Inner diameter of the cylinder in mm
base_height = 5;            // Height of the cylinder in mm

cap_height = .8;            // Height of the cap in mm
cap_diameter = 20;          // Diameter of the cap in mm

// Subtract the inner cylinder from the outer cylinder
union() {
    cylinder(h = cap_height, d = cap_diameter, $fn = 100);
    
    difference() {
        base_cylinder(h = base_height, d = base_outer_diameter, $fn = 100);
        cylinder(h = base_height, d = base_inner_diameter, $fn = 100);
    }
}

