/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 5A6E418E
/// @DnDApplyTo : 6f7a5be8-12a5-4c02-a410-42a630c75bc3
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 61CF0711
	/// @DnDParent : 5A6E418E
	/// @DnDArgument : "score" "+10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(+10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4C39D302
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 474CB7D4
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 745902A7
	/// @DnDParent : 474CB7D4
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F73E7D1
	/// @DnDParent : 474CB7D4
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_AsteroidLg"
	if(sprite_index == spr_AsteroidLg)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 51FE0436
		/// @DnDParent : 0F73E7D1
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 359DAF72
			/// @DnDParent : 51FE0436
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "2219ff5a-90a5-40be-a15d-5aeaa62f9394"
			var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0720ED06
			/// @DnDParent : 51FE0436
			/// @DnDArgument : "expr" "spr_AsteroidMed"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_AsteroidMed;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 134E824F
	/// @DnDParent : 474CB7D4
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_AsteroidMed"
	if(sprite_index == spr_AsteroidMed)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 4126882A
		/// @DnDParent : 134E824F
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1CF4C759
			/// @DnDParent : 4126882A
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "2219ff5a-90a5-40be-a15d-5aeaa62f9394"
			var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 73AACFE3
			/// @DnDParent : 4126882A
			/// @DnDArgument : "expr" "spr_AsteroidSmall"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_AsteroidSmall;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 78EA720A
	/// @DnDParent : 474CB7D4
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4FF165A0
		/// @DnDParent : 78EA720A
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debrits"
		/// @DnDSaveInfo : "objectid" "9e5b0330-8170-4bd1-b6de-b4ec67589f9e"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debrits);
	}
}