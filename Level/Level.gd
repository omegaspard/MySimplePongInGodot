extends Node



func _on_ScoringAreaLeft_body_entered(body):
	$Ball.position = Vector2(640, 360)


func _on_ScoringAreaRight_body_entered(body):
	$Ball.position = Vector2(640, 360)
