data:extend(
{
    {
    type = "smoke-with-trigger",
    name = "agent-orange-cloud",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
        filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
        priority = "low",
        width = 256,
        height = 256,
        frame_count = 45,
        animation_speed = 0.5,
        line_length = 7,
        scale = 4.2,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration =  60 * 30,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0.7, g = 0.3, b = 0.0 },
    action =
    {
        type = "direct",
        action_delivery =
        {
            type = "instant",
            target_effects =
            {
                type = "nested-result",
                action =
                {
                    type = "area",
                    perimeter = 16,
                    entity_flags = {"breaths-air"},
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            type = "damage",
                            damage = { amount = 1.0, type = "poison"}
                        }
                    }
                }
            }
        }
    },
    action_frequency = 30
    },
    {
        type = "projectile",
        name = "agent-orange-capsule",
        flags = {"not-on-map"},
        acceleration = 0.005,
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    type = "create-entity",
                    entity_name = "agent-orange-cloud"
                }
            }
        },
        light = {intensity = 0.5, size = 4},
        animation =
        {
            filename = "__Agent Orange__/graphics/agent-orange-capsule.png",
            frame_count = 1,
            width = 32,
            height = 32,
            priority = "high"
        },
        shadow =
        {
            filename = "__base__/graphics/entity/poison-capsule/poison-capsule-shadow.png",
            frame_count = 1,
            width = 32,
            height = 32,
            priority = "high"
        },
        smoke = capsule_smoke,
    },
    {
        type = "capsule",
        name = "agent-orange-capsule",
        icon = "__Agent Orange__/graphics/agent-orange-capsule.png",
        flags = {"goes-to-quickbar"},
        capsule_action =
        {
            type = "throw",
            attack_parameters =
            {
                type = "projectile",
                ammo_category = "capsule",
                cooldown = 30,
                projectile_creation_distance = 0.6,
                range = 20,
                ammo_type =
                {
                    category = "capsule",
                    target_type = "position",
                    action =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "projectile",
                            projectile = "agent-orange-capsule",
                            starting_speed = 0.3
                        }
                    }
                }
            }
        },
        subgroup = "capsule",
        order = "b[poison-capsule]",
        stack_size = 100
    },
})