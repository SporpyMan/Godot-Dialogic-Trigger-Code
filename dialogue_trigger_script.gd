extends Area3D

@export var dialogue_timeline : String

@export var self_destruct : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
		
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
		
		
func _on_body_entered(body: Node3D) -> void:
	if(body.name == "player"):
		if(self_destruct == false):
			Dialogic.start(dialogue_timeline)
		else:
			queue_free()
			Dialogic.start(dialogue_timeline)
