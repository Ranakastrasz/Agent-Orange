data:extend(
{
    {
        type = "capsule",
        name = "agent-orange-capsule",
        icon = "__Agent-Orange__/graphics/agent-orange-capsule.png",
		icon_size = 32,
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