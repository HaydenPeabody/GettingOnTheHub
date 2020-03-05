/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 439B7724
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 44D176B4
	/// @DnDParent : 439B7724
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 7B907FA8
		/// @DnDParent : 44D176B4
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "bd72cd2b-38b3-49cf-aca9-69cac14fecae"
		room_goto(rm_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 7DE2D057
	/// @DnDParent : 439B7724
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 1A3C63FD
		/// @DnDParent : 7DE2D057
		/// @DnDArgument : "room" "rm_gameover"
		/// @DnDSaveInfo : "room" "bae29c5f-1268-4e5e-b64c-c94ed2dfc2fd"
		room_goto(rm_gameover);
	}
}