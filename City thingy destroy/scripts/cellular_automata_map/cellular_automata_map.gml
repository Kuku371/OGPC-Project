function cellular_automata_map(_width, _height, _spawn_chance, _create_limit, _destroy_limit) constructor {
	
	//set variables
	width = _width;
	height = _height;
	create_limit = _create_limit;
	destroy_limit = _destroy_limit;
	
	//create and randomize map
	for (var col = width -1; col >=0; col -=1){
		for (var row = hiehgt -1; row >=0; row -=1) {
			map[col][row] = random(1) <= _spawn_chance;
		}
	
	}

	//iterate function

	static iterate = function(_num) {
		
		repeat(_num) {
			
			var _new_map = [];
			
			for (var col = 0; col < width; col +=1){
				for (var row = 0; row < hiehgt; row +=1){
					
					//count how many neighbors are sand
					
					var _col_dif, _row_dif, _count;
					_count = 0;
					for (var col_offset=-1; col_offset<2; col_offset += 1) {
						for (var row_offset = -1; row_offset < 2; row_offset +=1){
							_col_dif = col + col_offset;
							_row_dif = row + row_offset;
							if (_col_dif < 0) || (_row_dif < 0) || (_col_dif >width) || (_row_dif >height) {
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