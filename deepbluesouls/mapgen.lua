local function get_biome_type(pos)
    if pos.x % 60 < 20 then
        return "clean"
    elseif pos.x % 60 < 40 then
        return "polluted"
    else
        return "toxic"
    end
end

minetest.register_on_generated(function(minp, maxp, seed)

    for x = minp.x, maxp.x do
        for z = minp.z, maxp.z do

            for y = minp.y, maxp.y do
                local pos = {x=x, y=y, z=z}

                if y == 0 then

                    if polluted then

                        if math.random(1,3) == 1 then
                            minetest.set_node(pos, {name = "deepbluesouls:trash"})
                        end

                        if math.random(1,120) == 1 then
                            minetest.add_entity(pos, "deepbluesouls:mutant")
                        end
                    end

                end
            end
        end
    end
end)