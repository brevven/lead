-- Titanium recipe & tech changes
--
local util = require("__bzlead__.util");

if (not mods["pyrawores"] and not mods["bobplates"] and not mods["angelssmelting"]) then
  util.replace_ingredient("pipe", "iron-plate", "lead-plate")
  util.replace_ingredient("pipe-to-ground", "iron-plate", "lead-plate")
  util.replace_some_ingredient("storage-tank", "iron-plate", 10, "lead-plate", 10)
  util.replace_ingredient("battery", "iron-plate", "lead-plate")

  
  if util.sulfuric() then
    util.replace_ingredient("sulfuric-acid", "iron-plate", "lead-plate")
  end

  util.replace_ingredient("uranium-fuel-cell", "iron-plate", "lead-plate")
  util.replace_some_ingredient("gun-turret", "iron-plate", 4, "lead-plate", 4)

  util.add_ingredient("big-electric-pole", "lead-plate", 2)
  util.add_ingredient("substation", "lead-plate", 2)
  util.add_ingredient("electric-furnace", "lead-plate", 4)
  util.add_ingredient("solar-panel", "lead-plate", 5)

  util.add_ingredient("flamethrower-turret", "lead-plate", 4)
  util.add_ingredient("artillery-turret", "lead-plate", 40)

  -- ammunition
  util.replace_ingredient("firearm-magazine", "iron-plate", "lead-plate")
  util.replace_ingredient("shotgun-shell", "iron-plate", "lead-plate")
end

-- Krastorio 2 changes
util.add_ingredient("kr-laser-artillery-turret", "lead-plate", 10)
util.add_ingredient("kr-railgun-turret", "lead-plate", 10)
util.add_ingredient("kr-rocket-turret", "lead-plate", 10)

util.add_product("se-scrap-recycling", {name="lead-ore", amount=1, probability=0.1})

if mods["WeaponPack"] then
  util.replace_ingredient("9x18", "iron-plate", "lead-plate")
  util.replace_some_ingredient("9x19", "iron-plate", 1, "lead-plate", 1)
  util.replace_some_ingredient("7,62x25", "iron-plate", 9, "lead-plate", 9)
  util.replace_some_ingredient("7,62x51", "iron-plate", 11, "lead-plate", 11)
  util.replace_some_ingredient("5,56x45", "iron-plate", 9, "lead-plate", 9)
  util.replace_some_ingredient("5,45x39", "iron-plate", 7, "lead-plate", 7)
  util.replace_some_ingredient("5,7x28", "iron-plate", 7, "lead-plate", 7)
  util.replace_some_ingredient("5,7 × 28", "iron-plate", 7, "lead-plate", 7)
  util.replace_some_ingredient("357", "iron-plate", 9, "lead-plate", 9)
  util.replace_some_ingredient("45acp", "iron-plate", 7, "lead-plate", 7)
  util.replace_some_ingredient("12gauge", "iron-plate", 3, "lead-plate", 3)
end

if mods["More_Ammo"] then
  util.replace_ingredient("sp-ammo-recipe", "iron-plate", "lead-plate")
end

if mods["eve-weaponry"] then
  util.replace_ingredient("small-carbonized-lead", "iron-plate", "lead-plate")
end

util.add_ingredient("howitzer-turret-recipe","lead-plate", 8)

-- Additional turrets
util.add_ingredient("at-acidthrower-turret","lead-plate", 4)
util.add_ingredient("at-cannon-turret-mk1","lead-plate", 4)
util.add_ingredient("at-rocket-turret-mk1","lead-plate", 4)
util.replace_ingredient("small-coal-cannon-shell", "copper-plate", "lead-plate")
util.replace_ingredient("small-coal-cannon-shell", "copper-plate", "lead-plate")
util.add_ingredient("at_A1_b","lead-plate", 20)

-- Other one-offs
util.replace_some_ingredient("zinfinite_buffer_fluid_tank1", "iron-plate", 1000, "lead-plate", 1000)
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

-- King Jo
util.replace_ingredient("bolt75mk1", "steel-plate", "lead-plate")
util.replace_some_ingredient("bolt100mk1", "steel-plate", 3, "lead-plate", 3)
util.replace_some_ingredient("bolt75metalstorm", "steel-plate", 3, "lead-plate", 2)
util.replace_some_ingredient("bolt100metalstorm", "steel-plate", 5, "lead-plate", 5)


-- Geothermal
util.add_ingredient("geothermal-well", "lead-plate", 120)

-- Nuclear furnace
util.add_ingredient("nuclear-furnace-1", "lead-plate", 200)
util.add_ingredient("nuclear-furnace-2", "lead-plate", 200)

-- Mega furnace
util.add_ingredient("mega-furnace", "lead-plate", 4)

util.replace_ingredient("breeder-fuel-cell", "iron-plate", "lead-plate")
util.replace_ingredient("mox-fuel-cell", "iron-plate", "lead-plate")


-- Endgame Combat
util.add_ingredient("concussion-turret", "lead-plate", 20)
util.add_ingredient("sticky-turret", "lead-plate", 4)
util.add_ingredient("cannon-turret", "lead-plate", 20)
util.add_ingredient("plasma-turret", "lead-plate", 8)


-- Other
util.add_ingredient("rocket-turret", "lead-plate", 8)
util.add_ingredient("hl-rocket-turret-recipe", "lead-plate", 20)


-- Realistic Reactors
util.add_ingredient("reactor-sarcophagus", "lead-plate", 300)

-- Nuclear locomotive
util.replace_ingredient("Nuclear_Train", "iron-plate", "lead-plate")

-- Uranium Rework
util.add_ingredient("uraniumrework-uranium-waste-container", "lead-plate", 25)

-- Schall 
util.add_ingredient("Schall-radioactive-waste-incinerator", "lead-plate", 25)
