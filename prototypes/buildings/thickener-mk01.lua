local pipes = {
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/thickener/bottom.png",
        priority = "extra-high",
        width = 237,
        height = 260
    }
}

RECIPE {
    type = "recipe",
    name = "thickener-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"steam-engine", 1},
        {"small-lamp", 4},
        {"electronic-circuit", 10}, --updated-bob basic-electronic-circuit-board
        {"steel-plate", 50},
        {"pipe", 15} --updated-bob brass plate
    },
    results = {
        {"thickener-mk01", 1}
    }
}

ITEM {
    type = "item",
    name = "thickener-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/thickener-mk01.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk01",
    order = "b",
    place_result = "thickener-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "thickener-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/thickener-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "thickener-mk01"},
    fast_replaceable_group = "thickener",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"thickener"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "400kW",
    animation = {
        layers = {
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/thickener/thickener-bottom.png",
                width = 237,
                height = 132,
                line_length = 8,
                frame_count = 100,
                animation_speed = 1,
                shift = {0.19, 1.42}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/thickener/thickener-bottom-mask.png",
                width = 237,
                height = 132,
                line_length = 8,
                frame_count = 100,
                animation_speed = 1,
                shift = {0.19, 1.42},
				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/thickener/thickener-top.png",
                width = 237,
                height = 128,
                line_length = 8,
                frame_count = 100,
                animation_speed = 1,
                shift = {0.19, -2.640}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/thickener/thickener-top-mask.png",
                width = 237,
                height = 128,
                line_length = 8,
                frame_count = 100,
                animation_speed = 1,
                shift = {0.19, -2.640},
				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            }
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {1.19, -4.4}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, false, false),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, 4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {1.19, -4.4}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, false, false),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-4.0, -1.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {1.19, -4.4}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, false, false),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {1.19, -4.4}, nil, nil, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, false, false),
            base_level = 1,
            pipe_connections = {{type = "output", position = {4.0, 1.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/thickener.ogg", volume = 1.3},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/thickener.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
