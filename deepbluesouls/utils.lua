function get_biome_type(pos)
    if pos.x % 60 < 20 then
        return "clean"
    elseif pos.x % 60 < 40 then
        return "polluted"
    else
        return "toxic"
    end
end

function show_eco_message(player_name, message)
    minetest.chat_send_player(player_name, "🌍 " .. message)
end