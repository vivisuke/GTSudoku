extends ColorRect

const N_VERT = 6
const N_HORZ = 6
const N_CELLS = N_HORZ * N_VERT
const CELL_WIDTH = 81
const INEQU_HT2 = CELL_WIDTH * 0.15
const INEQU_WD2 = CELL_WIDTH * 0.10
const WD = 4
#const COL = Color.black
#const COL = Color.orange
const COL = Color.darkgoldenrod

var ans_num = []

func _ready():
	ans_num.resize(N_CELLS)
	pass # Replace with function body.

func _draw():
	for y in range(N_VERT):
		var py = (y + 0.5) * CELL_WIDTH		# 中点位置
		for x in range(1, N_HORZ):
			var px = x * CELL_WIDTH
			draw_line(Vector2(px-INEQU_WD2, py), Vector2(px+INEQU_WD2, py-INEQU_HT2), COL, WD)
			draw_line(Vector2(px-INEQU_WD2, py), Vector2(px+INEQU_WD2, py+INEQU_HT2), COL, WD)
	for x in range(N_HORZ):
		var px = (x + 0.5) * CELL_WIDTH		# 中点位置
		for y in range(1, N_VERT):
			var py = y * CELL_WIDTH
			draw_line(Vector2(px, py-INEQU_WD2), Vector2(px-INEQU_HT2, py+INEQU_WD2), COL, WD)
			draw_line(Vector2(px, py-INEQU_WD2), Vector2(px+INEQU_HT2, py+INEQU_WD2), COL, WD)
	pass
