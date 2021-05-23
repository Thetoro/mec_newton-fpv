extends Control

var position

func _on_ItemList_item_rmb_selected(index: int, at_position: Vector2) -> void:
	print($ItemList.get_item_text(index))

func _on_Button_pressed() -> void:
	$Button.get_tree().change_scene("res://world.tscn")
