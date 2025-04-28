// Randomize the seed for random number generation
randomize();

// Define spawn chances for each tile type
var spawn_chances = array_create(4, 0);
spawn_chances[TileType.GRASS] = 0.22;
spawn_chances[TileType.WATER] = 0.25;
spawn_chances[TileType.SAND] = 0.30;
spawn_chances[TileType.FOREST] = 0.23;

// Create the map
my_map = new cellular_automata_map(50, 50, spawn_chances, 3, 2);

// Define the spawn_squares function
spawn_squares = function() {
    // Destroy any existing water tiles
    instance_destroy(obj_watertile);
    
    // Calculate the spacing between tiles based on sprite width
    var _spacing = sprite_get_width(watertile);
    
    // Loop through each column and row of the map
    for (var col = 0; col < my_map.width; col += 1) {
        for (var row = 0; row < my_map.height; row += 1) {
            // Determine the tile type based on the map value
            var tile_type = my_map.map[col][row];
            
            // Create the appropriate tile instance based on the tile type
            switch (tile_type) {
                case TileType.SAND:
                    instance_create_layer(col * _spacing, row * _spacing, layer, obj_sandtile);
                    break;
                case TileType.GRASS:
                    instance_create_layer(col * _spacing, row * _spacing, layer, obj_grasstile);
                    break;
                case TileType.WATER:
                    instance_create_layer(col * _spacing, row * _spacing, layer, obj_watertile);
                    break;
				case TileType.FOREST:
					instance_create_layer(col * _spacing, row * _spacing, layer, obj_foresttile);
                    break;
            }
        }
    }
};

// Run iterations to generate the map
my_map.iterate(10);

// Spawn the tiles based on the generated map
spawn_squares();
