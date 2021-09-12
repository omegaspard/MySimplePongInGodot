extends Node

var playerScore = 0
var opponoentPlayerScore = 0

func _on_ScoringAreaLeft_body_entered(body):
	$Ball.position = Vector2(640, 360)
	opponoentPlayerScore += 1

func _on_ScoringAreaRight_body_entered(body):
	$Ball.position = Vector2(640, 360)
	playerScore += 1
	
func _process(delta):
	$PlayerScore.text = str(playerScore)
	$OpponentPlayerScore.text = str(opponoentPlayerScore)
