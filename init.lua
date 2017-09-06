local f = assert(io.open(minetest.get_worldpath().."/modifications.txt", "r"))
local the_text = f:read("*all")
f:close()

minetest.register_on_joinplayer(function(player)

	minetest.show_formspec(player:get_player_name(), "start_screen",
		"size[12,8;]"..
		"bgcolor[#73767B;false]"..
		"textarea[0.5,0.5;11.5,8;name;;"..the_text.."]"..
		"button_exit[5,7.5;6,2;yes;OK]");

end)
