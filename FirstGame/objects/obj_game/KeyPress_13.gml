/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 2374C772
/// @DnDArgument : "expr" "room"
var l2374C772_0 = room;
switch(l2374C772_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 066BEF94
	/// @DnDParent : 2374C772
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2FDDF6DA
		/// @DnDParent : 066BEF94
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "bfcb65d0-7431-4d6c-9c50-231f6e93b1b8"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7612C8D1
	/// @DnDParent : 2374C772
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2B736099
		/// @DnDParent : 7612C8D1
		/// @DnDArgument : "room" "rm_start"
		/// @DnDSaveInfo : "room" "0eb6f705-a232-459a-aabf-d07fe8169585"
		room_goto(rm_start);
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 46758618
		/// @DnDParent : 7612C8D1
		/// @DnDArgument : "lives" "3"
		
		__dnd_lives = real(3);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7AB31BD2
	/// @DnDParent : 2374C772
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3B33EB34
		/// @DnDParent : 7AB31BD2
		/// @DnDArgument : "room" "rm_start"
		/// @DnDSaveInfo : "room" "0eb6f705-a232-459a-aabf-d07fe8169585"
		room_goto(rm_start);
		break;
}