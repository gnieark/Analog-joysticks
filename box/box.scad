difference(){
	union(){
		linear_extrude (height=4)
			import (file="profils.dxf", layer="borders", $fn=200);

		translate([0,0,3.99])
			linear_extrude (height=2)
					    import (file="profils.dxf", layer="tranche", $fn=200);
	}
	translate([0,0,1])
	linear_extrude (height=6)
		import (file="profils.dxf", layer="holes-for-buttons", $fn=200);
}

