/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 28CDD5E0
/// @DnDArgument : "expr" "room"
var l28CDD5E0_0 = room;
switch(l28CDD5E0_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4C439F8D
	/// @DnDParent : 28CDD5E0
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 3A43870A
		/// @DnDParent : 4C439F8D
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 7A93DA4C
		/// @DnDParent : 4C439F8D
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "sprite6"
		/// @DnDSaveInfo : "sprite" "1fe984be-9212-4043-ad55-187ca63b0340"
		var l7A93DA4C_0 = sprite_get_width(sprite6);
		var l7A93DA4C_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l7A93DA4C_2 = __dnd_lives; l7A93DA4C_2 > 0; --l7A93DA4C_2) {
			draw_sprite(sprite6, 0, 20 + l7A93DA4C_1, 40);
			l7A93DA4C_1 += l7A93DA4C_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5AAE179C
	/// @DnDParent : 28CDD5E0
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 42578377
		/// @DnDParent : 5AAE179C
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 34920795
		/// @DnDParent : 5AAE179C
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""ASTEROIDS ""
		draw_text_transformed(250, 100, string("ASTEROIDS ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 61960BEB
		/// @DnDParent : 5AAE179C
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1000 to win! ""
		draw_text(250, 200, string("Score 1000 to win! ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 7D3DCCED
		/// @DnDParent : 5AAE179C
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Move with up/left/right, shoot with space ""
		draw_text(250, 260, string("Move with up/left/right, shoot with space ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 43484E90
		/// @DnDParent : 5AAE179C
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" ""Press Enter To Start ""
		draw_text(250, 350, string("Press Enter To Start ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 5620EF6F
		/// @DnDParent : 5AAE179C
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 24D277BA
	/// @DnDParent : 28CDD5E0
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 40994F67
		/// @DnDParent : 24D277BA
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 13CD5AFA
		/// @DnDParent : 24D277BA
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE ""
		draw_text_transformed(250, 100, string("YOU LOSE ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0B09D519
		/// @DnDParent : 24D277BA
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""HAHA LOSER ""
		draw_text(250, 200, string("HAHA LOSER ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 06CF41F5
		/// @DnDParent : 24D277BA
		/// @DnDArgument : "x" "270"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(270, 260, string("SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 652EC353
		/// @DnDParent : 24D277BA
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" ""Press Enter To Start ""
		draw_text(250, 350, string("Press Enter To Start ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 38AF5474
		/// @DnDParent : 24D277BA
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 621CBF4F
	/// @DnDParent : 28CDD5E0
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 424FA6F2
		/// @DnDParent : 621CBF4F
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 5ECF62BA
		/// @DnDParent : 621CBF4F
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WON.. ""
		draw_text_transformed(250, 100, string("YOU WON.. ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0D0BA35A
		/// @DnDParent : 621CBF4F
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""...but at what cost?""
		draw_text(250, 200, string("...but at what cost?") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 508F2149
		/// @DnDParent : 621CBF4F
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""SCORE:  ""
		draw_text(250, 260, string("SCORE:  ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 428B4366
		/// @DnDParent : 621CBF4F
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" ""Press Enter To Start ""
		draw_text(250, 350, string("Press Enter To Start ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6FCCDF6C
		/// @DnDParent : 621CBF4F
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}