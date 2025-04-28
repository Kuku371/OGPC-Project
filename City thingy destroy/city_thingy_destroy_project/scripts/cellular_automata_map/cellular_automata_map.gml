function cellular_automata_map(_width, _height, _spawn_chances, _create_limit, _destroy_limit) constructor {
    width = _width;
    height = _height;
    create_limit = _create_limit;
    destroy_limit = _destroy_limit;

    // Initialize the map
    map = array_create(width);
    for (var col = 0; col < width; col++) {
        map[col] = array_create(height);
        for (var row = 0; row < height; row++) {
            var rand = random(1);
            if (rand < _spawn_chances[TileType.GRASS]) {
                map[col][row] = TileType.GRASS;
            } else if (rand < _spawn_chances[TileType.GRASS] + _spawn_chances[TileType.WATER]) {
                map[col][row] = TileType.WATER;
            } else {
                map[col][row] = TileType.SAND;
            }
        }
    }

    // Iterate function
    static iterate = function(_num) {
        repeat (_num) {
            var _new_map = array_create(width);
            for (var col = 0; col < width; col++) {
                _new_map[col] = array_create(height);
                for (var row = 0; row < height; row++) {
                    // Initialize neighbor counts
                    var neighbor_counts = array_create(3, 0);

                    // Count neighbors
                    for (var dx = -1; dx <= 1; dx++) {
                        for (var dy = -1; dy <= 1; dy++) {
                            if (dx == 0 && dy == 0) continue;
                            var nx = col + dx;
                            var ny = row + dy;
                            if (nx >= 0 && nx < width && ny >= 0 && ny < height) {
                                var neighbor_type = map[nx][ny];
                                neighbor_counts[neighbor_type]++;
                            }
                        }
                    }

                    // Determine new tile type based on neighbor counts
                    var current_type = map[col][row];
                    var new_type = current_type;

                    if (neighbor_counts[TileType.GRASS] > create_limit) {
						new_type = TileType.GRASS
					} else if (neighbor_counts[TileType.WATER] > create_limit) {
					    new_type = TileType.WATER
					} else if (neighbor_counts[TileType.SAND] > create_limit) {
					    new_type = TileType.SAND
					} else if (neighbor_counts[current_type] < destroy_limit) {
						if (current_type = TileType.WATER){
							if (neighbor_counts[TileType.GRASS] >= neighbor_counts[TileType.SAND]){
								new_type = TileType.GRASS;	
							} else {
								new_type = TileType.SAND;
							}
						} else if (current_type = TileType.GRASS) {
							if (neighbor_counts[TileType.SAND] >= neighbor_counts[TileType.WATER]){
								new_type = TileType.SAND;	
							} else {
								new_type = TileType.WATER;
							}
						} else {
							if (neighbor_counts[TileType.GRASS] >= neighbor_counts[TileType.WATER]){
								new_type = TileType.GRASS;	
							} else {
								new_type = TileType.WATER;
							}
						}
					}
                    _new_map[col][row] = new_type;
                }
            }
            map = _new_map;
        }
    }
}


/* This is working for 2 tiles

function cellular_automata_map(_width, _height, _spawn_chance, _create_limit, _destroy_limit) constructor {
	
	//set variables
	width = _width;
	height = _height;
	create_limit = _create_limit;
	destroy_limit = _destroy_limit;
	
	//create and randomize map
	for (var col = width -1; col >=0; col -=1){
		for (var row = height -1; row >=0; row -=1) {
			map[col][row] = random(1) <= _spawn_chance;
		}
	
	}

	//iterate function

	static iterate = function(_num) {
		
		repeat(_num) {
			
			var _new_map = [];
			
			for (var col = 0; col < width; col +=1){
				for (var row = 0; row < height; row +=1){
					
					//count how many neighbors are sand
					
					var _col_dif, _row_dif, _count;
					_count = 0;
					for (var col_offset=-1; col_offset<2; col_offset += 1) {
						for (var row_offset = -1; row_offset < 2; row_offset +=1){
							_col_dif = col + col_offset;
							_row_dif = row + row_offset;
							if (_col_dif < 0) || (_row_dif < 0) || (_col_dif >= width) || (_row_dif >= height) {
								_count += 1;
							} else if (_col_dif == 0) && (_row_dif == 0) {
								continue;
							} else if (map[_col_dif][_row_dif]) {
								_count +=1;						
							}
						}
					}
				
					if (map[col][row]) {
						_new_map[col][row] = _count > destroy_limit;
					} else {
						_new_map[col][row] = _count > create_limit;	
					}
				
				}
			}
			
			map = _new_map;
			
		}
		
	}
}

*/