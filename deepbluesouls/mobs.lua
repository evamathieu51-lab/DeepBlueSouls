minetest.register_entity("deepbluesouls:mutant", {
    initial_properties = {
        physical = true,
        collide_with_objects = true,
        visual = "cube",
        textures = {
            "mutant.png", "mutant.png",
            "mutant.png", "mutant.png",
            "mutant.png", "mutant.png"
        },
        collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
    },

    on_punch = function(self, hitter)
        if hitter:is_player() then
            local name = hitter:get_player_name()

            update_quest(hitter, "mutant")

            minetest.chat_send_player(name, "Mutant eliminated")
            self.object:remove()
        end
    end,
})

minetest.register_abm({
    label = "Spawn mutant",
    nodenames = {"default:water_source"},
    interval = 20,
    chance = 15,

    action = function(pos)
        minetest.add_entity(pos, "deepbluesouls:mutant")
    end,
})