-- Titanium recipe & tech changes
--
local util = require("__bzlead__.util");

if (not mods["bobplates"] and not mods["angelssmelting"]) then
  util.replace_ingredient("pipe", "iron-plate", "lead-plate")
  util.replace_ingredient("pipe-to-ground", "iron-plate", "lead-plate")
  util.replace_some_ingredient("storage-tank", "iron-plate", "lead-plate", 10)
  util.replace_ingredient("battery", "iron-plate", "lead-plate")
  util.replace_ingredient("uranium-fuel-cell", "iron-plate", "lead-plate")
  util.replace_some_ingredient("gun-turret", "iron-plate", "lead-plate", 5)

  util.add_ingredient("big-electric-pole", "lead-plate", 2)
  util.add_ingredient("substation", "lead-plate", 2)
  util.add_ingredient("electric-furnace", "lead-plate", 5)
  util.add_ingredient("solar-panel", "lead-plate", 5)

  util.add_ingredient("flamethrower-turret", "lead-plate", 5)
  util.add_ingredient("artillery-turret", "lead-plate", 40)

  -- ammunition
  util.replace_ingredient("firearm-magazine", "iron-plate", "lead-plate")
  util.replace_ingredient("shotgun-shell", "iron-plate", "lead-plate")
end


-- Krastorio 2 changes
if mods["Krastorio2"] then
  util.add_ingredient("kr-laser-artillery-turret", "lead-plate", 10)
  util.add_ingredient("kr-railgun-turret", "lead-plate", 10)
  util.add_ingredient("kr-rocket-turret", "lead-plate", 10)
end

if mods["WeaponPack"] then
  util.replace_ingredient("9x18", "iron-plate", "lead-plate")
  util.replace_some_ingredient("9x19", "iron-plate", "lead-plate", 1)
  util.replace_some_ingredient("7,62x25", "iron-plate", "lead-plate", 9)
  util.replace_some_ingredient("7,62x51", "iron-plate", "lead-plate", 11)
  util.replace_some_ingredient("5,56x45", "iron-plate", "lead-plate", 9)
  util.replace_some_ingredient("5,45x39", "iron-plate", "lead-plate", 7)
  util.replace_some_ingredient("5,7x28", "iron-plate", "lead-plate", 7)
  util.replace_some_ingredient("5,7 × 28", "iron-plate", "lead-plate", 7)
  util.replace_some_ingredient("357", "iron-plate", "lead-plate", 9)
  util.replace_some_ingredient("45acp", "iron-plate", "lead-plate", 7)
  util.replace_some_ingredient("12gauge", "iron-plate", "lead-plate", 3)
end

if mods["eve-weaponry"] then
  util.replace_ingredient("small-carbonized-lead", "iron-plate", "lead-plate")
end

if data.raw.recipe["zinfinite_buffer_fluid_tank1"] then
  util.replace_some_ingredient("zinfinite_buffer_fluid_tank1", "iron-plate", "lead-plate", 1000)
end

if data.raw.recipe["storage-tank2"] then
  util.add_ingredient("storage-tank2", "lead-plate", 32)
end

if data.raw.recipe["advanced-substation"] then
  util.add_ingredient("advanced-substation", "lead-plate", 20)
end

if data.raw.recipe["substation-2"] then
  util.add_ingredient("advanced-substation", "lead-plate", 20)
end

if data.raw.recipe["advanced-accumulator"] then
  util.add_ingredient("advanced-accumulator", "lead-plate", 16)
end

if data.raw.recipe["vtk-cannon-turret"] then
  util.add_ingredient("vtk-cannon-turret", "lead-plate", 20)
end
if data.raw.recipe["vtk-cannon-turret-heavy"] then
  util.add_ingredient("vtk-cannon-turret-heavy", "lead-plate", 30)
end
