extends Node

var playerScore = 0
var opponoentPlayerScore = 0

func _on_ScoringAreaLeft_body_entered(body):
	$Ball.position = Vector2(640, 360)
	opponoentPlayerScore += 1
	get_tree().call_group('BallGroup', 'stop_ball')
	$CountdownTimer.start()
	$CountdownTimerLabel.visible = true

func _on_ScoringAreaRight_body_entered(body):
	$Ball.position = Vector2(640, 360)
	playerScore += 1
	get_tree().call_group('BallGroup', 'stop_ball')
	$CountdownTimer.start()
	$CountdownTimerLabel.visible = true
	
func _process(delta):
	$PlayerScore.text = str(playerScore)
	$OpponentPlayerScore.text = str(opponoentPlayerScore)
	if $CountdownTimerLabel.visible:
		$CountdownTimerLabel.text = str(int($CountdownTimer.time_left) + 1)

func _on_CountdownTimer_timeout():
	get_tree().call_group('BallGroup', 'restart_ball')
	$CountdownTimerLabel.visible = false
