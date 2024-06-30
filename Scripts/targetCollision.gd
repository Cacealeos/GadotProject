extends Node2D

var element = preload("res://Element_loader.tscn")
var elementalArray = ["crate","cargo","shark","crab"]
var queuetracker = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _collision():
	element.instantiate()
	element.position = (Vector2(0,0))
	element.Element.texture = _applyTexture(elementalArray[queuetracker])
	++queuetracker

func _applyTexture(index):
	match index:
		"crate":
			return "res://crate-removebg-preview.png"
		"cargo":
			return "res://cargo-removebg-preview.png"
		"shark":
			return "res://shark-removebg-preview.png"
		"crab":
			return "res://crab-removebg-preview.png"
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
