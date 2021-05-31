-- Titanium recipe & tech changes
--
local util = require("__bzlead__.util");

if (not mods["pyrawores"] and not mods["bobplates"] and not mods["angelssmelting"]) then
  util.replace_ingredient("pipe", "iron-plate", "lead-plate")
  util.replace_ingredient("pipe-to-ground", "iron-plate", "lead-plate")
  util.replace_some_ingredient("storage-tank", "iron-plate", "lead-plate", 10)
  util.replace_ingredient("battery", "iron-plate", "lead-plate")

  
  if util.sulfuric() then
    util.replace_ingredient("sulfuric-acid", "iron-plate", "lead-plate")
  end

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

util.add_product("se-scrap-recycling", {name="lead-ore", amount=1, probability=0.1})

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

if mods["More_Ammo"] then
  util.replace_ingredient("sp-ammo-recipe", "iron-plate", "lead-plate")
end

if mods["eve-weaponry"] then
  util.replace_ingredient("small-carbonized-lead", "iron-plate", "lead-plate")
end


-- Other one-offs
util.replace_some_ingredient("zinfinite_buffer_fluid_tank1", "iron-plate", "lead-plate", 1000)
util.add_ingredient("storage-tank2", "lead-plate", 32)
util.add_ingredient("advanced-substation", "lead-plate", 20)
util.add_ingredient("substation-2", "lead-plate", 20)
util.add_ingredient("advanced-accumulator", "lead-plate", 16)

util.add_ingredient("vtk-cannon-turret", "lead-plate", 20)
util.add_ingredient("vtk-cannon-turret-heavy", "lead-plate", 30)

util.add_ingredient("w93-modular-turret-base", "lead-plate", 8)
util.add_ingredient("w93-modular-turret2-base", "lead-plate", 4)


-- rampant arsenal
util.add_ingredient("rifle-item-rampant-arsenal", "lead-plate", 10)
util.add_ingredient("shotgun-item-rampant-arsenal", "lead-plate", 10)
util.add_ingredient("rocket-item-rampant-arsenal", "lead-plate", 10)
util.add_ingredient("rapid-rocket-item-rampant-arsenal", "lead-plate", 10)
util.add_ingredient("cannon-item-rampant-arsenal", "lead-plate", 20)
util.add_ingredient("rapid-cannon-item-rampant-arsenal", "lead-plate", 20)
util.add_ingredient("suppression-cannon-item-rampant-arsenal", "lead-plate", 30)
util.add_ingredient("capsule-item-rampant-arsenal", "lead-plate", 10)
util.add_ingredient("lite-artillery-turret-rampant-arsenal", "lead-plate", 20)


-- Light artillery
util.add_ingredient("derpy-artillery", "lead-plate", 20)
-- Bigger artillery
util.add_ingredient("big-artillery-turret", "lead-plate", 100)
-- Heavy Machine Gun Turret
util.add_ingredient("kr-heavy-machine-gun-turret", "lead-plate", 10)


-- Geothermal
util.add_ingredient("geothermal-well", "lead-plate", 120)

-- Nuclear furnace
util.add_ingredient("nuclear-furnace-1", "lead-plate", 200)
util.add_ingredient("nuclear-furnace-2", "lead-plate", 200)

-- Mega furnace
util.add_ingredient("mega-furnace", "lead-plate", 5)


