global.paused = false

var width = global.res.width
var height = global.res.height

camera = camera_create_view(0, 0, width, height, 0, objPlayer, -1, -1, width / 2, height / 2)

// Enable views and make view 0 visible
view_enabled = true
view_visible[0] = true

// Assign camera to view 0
view_set_camera(0, camera)

// Collision tilemap
collisionTilemap = layer_tilemap_get_id("TilesCollision")

// MP Grid

var gridWidth = to_tile(room_width)
var gridHeight = to_tile(room_height)
global.AIGrid = mp_grid_create(0, 0, gridWidth, gridHeight, TILESIZE, TILESIZE)

mp_grid_add_instances(global.AIGrid, objCollision, false)

for (var _x = 0; _x < gridWidth; _x++) {
	for (var _y = 0; _y < gridHeight; _y++) {
		var _col = tilemap_get(collisionTilemap, _x, _y)
		if(_col) mp_grid_add_cell(global.AIGrid, _x, _y)
	}
}