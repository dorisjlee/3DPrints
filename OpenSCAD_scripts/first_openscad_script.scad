////Object I
//cube([2,3,4]);
//difference() {
// 	cube(30, center=true);
// 	sphere(20);
// }
// //translate([0, 0, 30]) {
// //	cylinder(h=40, r=10);
// //}
//cube([2,3,4]);
//translate([3,0,0]) {
//  cube([2,3,4]);
//}
//
//Object II//
//translate([5,0,0]){
//    sphere(5,3,3);
//}
//translate([-3,-3,0]){
//	color([1,0,0]) sphere(5,4,5);
//}
//translate([0,5,0]){
//    color([0,1,0]) sphere(5,3,3);
//}
//translate([0,0,5]){
//    color([0,0,1]) sphere(5,3,3);
//}

// Object III
//square([5,5]);
//linear_extrude(height = 13) square([20,30]);
//linear_extrude(height = 13) square([30,20]);
//linear_extrude(height = 13) square([40,10]);
//rotate_extrude(height = 13) square([20,30]);
//rotate_extrude(height = 5) square([30,50]);

//Object IV
//translate([1,1,-1.3]){
//	sphere(1);
//}
//translate([1,1,2.5]){
//	sphere(1);
//}
//difference() {
//	// original
//	cube (size = [2,2,2]);
//	// object that carves out
//	# translate ([0.5,0.5,-0.5]) {
//	    cube (size = [1,1,3]);	
//	}
//}

//Object V
translate([0,0,5]){
	color([1,0,0])  cylinder(h=20, r1=6,r2=10,center = true);
}
translate([0,0,-10]){
  polyhedron(
  	points=[[10,10,0],[10,-10,0],[-10,-10,0],[-10,10,0], // the four points at base
           [0,0,10]]/0.91,                                 // the apex point 
  	faces=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],              // each triangle side
              [1,0,3],[2,1,3] ]                         // two triangles for square base
 	);
}
translate([0,0,10]){
 difference(){
	color([0,1,0]) sphere(r=10);
	#translate([-5,-5,-19.5]){
		linear_extrude(height = 5) color([1,0,1]) square(10);
	}
 }
}
