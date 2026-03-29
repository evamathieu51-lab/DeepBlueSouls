minetest.register_globalstep(function(dtime)
    for _, player in ipairs(minetest.get_connected_players()) do
        local pos = player:get_pos()
        local biome = get_biome_type(pos)

        if biome == "polluted" then
            player:set_sky({r=100,g=120,b=100}, "plain")
        elseif biome == "toxic" then
            player:set_sky({r=80,g=150,b=80}, "plain")
        else
            player:set_sky({r=0,g=150,b=255}, "plain")
        end
    end
end)
minetest.register_globalstep(function(dtime)
    for _, player in ipairs(minetest.get_connected_players()) do
        local pos = player:get_pos()
        local biome = get_biome_type(pos)

        if biome == "toxic" then
            player:set_hp(player:get_hp() - 1)
        end
    end
end)