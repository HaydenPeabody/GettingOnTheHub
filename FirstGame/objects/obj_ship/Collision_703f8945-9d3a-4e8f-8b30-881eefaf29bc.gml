/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 61F5AD2F
/// @DnDApplyTo : 6f7a5be8-12a5-4c02-a410-42a630c75bc3
with(obj_game) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 412F6A9B
	/// @DnDParent : 61F5AD2F
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 1);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 6D424211
/// @DnDApplyTo : 6f7a5be8-12a5-4c02-a410-42a630c75bc3
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 7AB3EBB7
	/// @DnDParent : 6D424211
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7DC42512
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0470A73B
/// @DnDArgument : "xpos" "250"
/// @DnDArgument : "ypos" "250"
/// @DnDArgument : "objectid" "obj_ship"
/// @DnDSaveInfo : "objectid" "10acc8c3-98d7-43b1-aaca-623ed7f7b073"
instance_create_layer(250, 250, "Instances", obj_ship);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 38D369A9
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0525B660
	/// @DnDParent : 38D369A9
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debrits"
	/// @DnDSaveInfo : "objectid" "9e5b0330-8170-4bd1-b6de-b4ec67589f9e"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debrits);
}