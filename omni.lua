local util = require("__bzlead__.util");

if (not mods["pyrawores"] and not mods["bobplates"] and not mods["angelssmelting"]) then
if omni and omni.matter then
  omni.matter.add_resource("lead-ore", omni.matter.get_ore_tier("iron-ore"))
  omni.matter.add_initial("lead-ore", 1, 5)
  util.replace_ingredient("omnicium-plate-mix", "copper-ore", "lead-ore")
  if data.raw.recipe["omnicium-plate-mix"] then
   data.raw.recipe["omnicium-plate-mix"].icon = nil
   data.raw.recipe["omnicium-plate-mix"].icons = 
    {
      {icon = data.raw.item["omnicium-plate"].icons[1].icon},
      {icon = "__bzlead__/graphics/icons/lead-ore.png", icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {8, -8}},
      {icon = "__base__/graphics/icons/iron-ore.png", scale =0.25, icon_size=64, shift={-6, 6}},
    }
  end
end
end
