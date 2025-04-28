
	
spawn_squares = function() {

	instance_destroy(obj_watertile);
	
	var _spacing = sprite_get_width(watertile);
	for (var col = 0; col < my_map.width; col +=1) {
		for (var row = 0; row < my_map.height; row +=1){
			if (my_map.map[col][row]) {
				instance_create_layer(col * _spacing, row * _spacing, "Tile_Layer", obj_watertile);
			} else {
				instance_create_layer(col * _spacing, row * _spacing, "Tile_Layer", obj_sandtile);
			}
		}
	}
	
	
	
	
}
	
randomize();
my_map = new cellular_automata_map(128,128,0.6,5,5);
my_map.iterate(10);
spawn_squares();