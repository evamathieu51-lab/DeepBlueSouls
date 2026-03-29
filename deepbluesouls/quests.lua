quests = {}

minetest.register_on_joinplayer(function(player)
    local name = player:get_player_name()

    quests[name] = {
        level = "easy",
        trash = 0,
        mutants = 0,
        samples = 0
    }

    minetest.chat_send_player(name, "Mission: Clean the ocean !")
end)

function update_quest(player, type)
    local name = player:get_player_name()
    local q = quests[name]

    if type == "trash" then
        q.trash = q.trash + 1

        if q.trash == 5 then
            show_eco_message(name,
                "Trash that ends up in the ocean can kill the wildlife !")
        end

        if q.trash >= 10 then
            q.level = "medium"
            minetest.chat_send_player(name, "Medium level unlocked")
        end
    end

    if type == "mutant" then
        q.mutants = q.mutants + 1

        if q.mutants == 3 then
            show_eco_message(name,
                "Pollution can genetically modifie species !")
        end

        if q.mutants >= 6 then
            q.level = "hard"
            minetest.chat_send_player(name, "Hard level unlocked")
        end
    end

    if type == "sample" then
        q.samples = q.samples + 1

        if q.samples == 3 then
            show_eco_message(name,
                "Microplastics are everywhere in the ocean !")
        end
    end
end
