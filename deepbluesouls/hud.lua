function show_hud_message(player, text, color)
    local id = player:hud_add({
        hud_elem_type = "text",
        position = {x = 0.5, y = 0.1},
        text = text,
        number = color or 0x00FF00,
        alignment = {x = 0, y = 0},
        scale = {x = 100, y = 100},
    })

    minetest.after(5, function()
        player:hud_remove(id)
    end)
end