minetest.register_node("deepbluesouls:trash", {
    description = "Plastic trash",
    tiles = {"trash.png"},
    groups = {cracky = 3},

    on_dig = function(pos, node, player)
        local name = player:get_player_name()

        update_quest(player, "trash")

        minetest.chat_send_player(name, "Trash cleaned")
        minetest.remove_node(pos)
    end,
})

minetest.register_tool("deepbluesouls:sample", {
    description = "Take sample",
    inventory_image = "sample.png",

    on_use = function(itemstack, user, pointed_thing)
        if pointed_thing.type ~= "node" then return end

        local pos = pointed_thing.under
        local node = minetest.get_node(pos)
        local name = user:get_player_name()

        if node.name == "default:water_source" then

            minetest.chat_send_player(name, "Sample taken")

            update_quest(user, "sample")
        else
            minetest.chat_send_player(name, "Aim at the water ! ")
        end

        return itemstack
    end,
})