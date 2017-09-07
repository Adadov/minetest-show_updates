local input = io.open(minetest.get_worldpath().."/modifications.txt", "r")
if input then
	local the_text = input:read("*all")
	input:close()

	minetest.register_on_joinplayer(function(player)

		minetest.show_formspec(player:get_player_name(), "start_screen",
			"size[12,10;]"..
			"bgcolor[#73767B;false]"..
			"textarea[0.5,0.5;11.5,8;name;;"..the_text.."]"..
			"button_exit[8,7;3,2;yes;OK]");

	end)
end
