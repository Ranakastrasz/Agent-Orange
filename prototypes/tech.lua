data:extend(
{
  {
    type = "technology",
    name = "agent-orange",
    icon = "__Agent-Orange__/graphics/agent-orange-capsule.png",
	icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "agent-orange-capsule"
      },
    },
    --prerequisites = {"~~~"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 10
    },
    order = "e-a-f"
  }
})