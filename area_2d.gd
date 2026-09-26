extends Area2D

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		print("YOU WIN!")
		$"../WinLabel".visible = true

		# Stop the player
		body.set_physics_process(false)

		# Stop the game
		get_tree().paused = true
