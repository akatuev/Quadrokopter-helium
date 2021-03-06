include <general-functions.scad>;

u_rail(angle, outer_radius, thickness, height, rail_strength);


module u_shape(thickness, height, strength)
{
	polygon(points=[[0,0], [thickness+2*strength,0], [thickness+2*strength, height+strength], [thickness+strength, height+strength], [thickness+strength, strength], [strength, strength],[strength, strength+height], [0, strength+height]], paths=[[0,1,2,3,4,5,6,7]]);
}

module u_rail(angle, outer_radius, thickness, height, strength)
{
	translate([-outer_radius-strength-thickness, 0, 0])
	rotate([0, 0, -angle/2])
	partial_rotate_extrude(angle, outer_radius, 15)u_shape(thickness, height, strength);
}

