extends Node2D

@onready var base: Sprite2D = $Base
@onready var secondary: Sprite2D = $Secondary
@onready var eyes: Sprite2D = $Eyes
@onready var nose: Sprite2D = $Nose
@onready var shadow: Sprite2D = $Shadow


var RGBvalue : float
var randomColor : Color

var secondaryColors = [
	Color.BEIGE,
	Color.CORNSILK,
	Color.GHOST_WHITE,
	Color.SNOW,
	Color.MINT_CREAM,
	Color.SEASHELL,
	Color.FLORAL_WHITE,
	Color.PAPAYA_WHIP
	]
	
var noseColors = [
	Color.SADDLE_BROWN,
	Color.PERU,
	Color.LIGHT_PINK,
	Color.BLACK,
	Color.DARK_SLATE_GRAY
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_generateBear()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _generateRandomColor()	-> Color:
	randomColor = Color(randf_range(0,1),randf_range(0,1),randf_range(0,1))
	print (randomColor)
	return randomColor
	
func _generateBear() -> void:
	base.modulate = _generateRandomColor()
	secondary.modulate = secondaryColors.pick_random()
	eyes.modulate = _generateRandomColor()
	nose.modulate = noseColors.pick_random()
	#shadow.modulate = (base.modulate * 1.5) * (eyes.modulate * 0.7)
	#shadow.material.set("shader_paramater/multiply_color",Vector4(1,1,1,1));
	
