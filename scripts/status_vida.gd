extends CharacterBody2D

var hp = 50

func take_damage():
    hp -= 10
    if hp <= 0:
        queue_free()
