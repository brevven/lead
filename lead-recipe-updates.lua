-- Titanium recipe & tech changes
--
local util = require("__bzlead__.data-util");

local leb = util.me.more_entities() and "lead-expansion-bolt" or "lead-plate"

if util.me.more_entities() then
  util.set_product_probability("scrap-recycling", "battery", 0.06)
  util.add_product("scrap-recycling", util.item("lead-expansion-bolt", 1, 0.01))
else
  util.set_product_probability("scrap-recycling", "battery", 0.08)
  util.set_product_probability("scrap-recycling", "copper-cable", 0.03)
end

util.replace_some_ingredient("basic-crusher", "steel-plate", 2, "lead-expansion-bolt", 2)
util.replace_ingredient("basic-crusher", "iron-plate", "lead-plate")

if (not mods["pyrawores"] and not mods["bobplates"] and not mods["angelssmelting"] and not mods["IndustrialRevolution"]) then
  util.replace_ingredient("pipe", "iron-plate", "lead-plate")
  util.replace_ingredient("pipe-to-ground", "iron-plate", "lead-plate")
  util.replace_ingredient("casting-pipe", "molten-iron", "molten-lead")
  util.replace_ingredient("casting-pipe-to-ground", "molten-iron", "molten-lead")
  util.replace_some_ingredient("storage-tank", "iron-plate", 10, "lead-plate", 10)
  util.replace_ingredient("battery", "iron-plate", "lead-plate")


  util.replace_ingredient("sulfuric-acid", "iron-plate", "lead-plate")
  util.replace_ingredient("uranium-fuel-cell", "iron-plate", "lead-plate")
  util.replace_some_ingredient("gun-turret", "iron-plate", 8, leb, 8)

  util.add_ingredient("big-electric-pole", leb, 4)
  util.add_ingredient("large-electric-pole", leb, 2) --modded
  util.add_ingredient("substation", leb, 4)
  util.replace_some_ingredient("electric-furnace", "steel-plate", 2, leb, 4)
  if not (mods.bzsilicon and util.has_ingredient("solar-panel", "solar-cell")) then
    util.add_ingredient("solar-panel", "lead-plate", 5)
  end

  util.add_ingredient("flamethrower-turret", leb, 4)
  util.add_ingredient("artillery-turret", leb, 40)
  util.add_ingredient("laser-turret", leb, 2)
  util.add_ingredient("rocket-turret", leb, 8)
  util.add_ingredient("tesla-turret", leb, 4)
  util.add_ingredient("electromagnetic-plant", leb, 8)
  util.add_ingredient("lab", leb, 4)
  util.replace_some_ingredient("assembling-machine-1", "iron-plate", 4, leb, 4)
  util.replace_some_ingredient("chemical-plant", "steel-plate", 1, leb, 4)
  util.replace_some_ingredient("chemical-plant", "steel-plate", 5, leb, 8)
  util.add_ingredient("centrifuge", leb, 100)

  util.add_ingredient("fusion-reactor", "lead-lithium-eutectic", 200)
  util.replace_some_ingredient("fusion-power-cell", "lithium-plate", 1, "lead-lithium-eutectic", 1)

  -- ammunition
  util.replace_ingredient("firearm-magazine", "iron-plate", "lead-plate")
  util.replace_ingredient("shotgun-shell", "iron-plate", "lead-plate")
end

if util.me.more_ammo() then
  util.add_effect("military", { type = "unlock-recipe", recipe = "firearm-magazine-iron-lead" })
  util.add_effect("military", { type = "unlock-recipe", recipe = "firearm-magazine-iron-only" })
  util.add_effect("military", { type = "unlock-recipe", recipe = "firearm-magazine-copper-lead" })
  if mods.Krastorio2 and util.me.get_setting("kr-more-realistic-weapon") then
    util.add_effect("military", { type = "unlock-recipe", recipe = "rifle-magazine-iron-lead" })
    util.add_effect("military", { type = "unlock-recipe", recipe = "rifle-magazine-iron" })
    util.add_effect("military", { type = "unlock-recipe", recipe = "rifle-magazine-copper-lead" })
  end
end

-- Krastorio 2 changes
util.add_ingredient("kr-laser-artillery-turret", "lead-plate", 10)
util.add_ingredient("kr-railgun-turret", "lead-plate", 10)
util.add_ingredient("kr-rocket-turret", "lead-plate", 10)

-- Space Exploration
if mods["space-exploration"] then
  util.replace_ingredient("effectivity-module", "copper-cable", "battery", 5)
end
util.add_product("se-scrap-recycling", { name = "lead-ore", type = "item", amount = 1, probability = 0.1 })
util.replace_some_ingredient("se-pulveriser", "iron-plate", 10, "lead-plate", 10)
util.replace_some_ingredient("se-canister", "copper-plate", 5, "lead-plate", 5)
util.add_ingredient("industrial-furnace", "lead-plate", 16) -- AAII

util.add_ingredient("se-material-testing-pack", "lead-plate", 1)
util.add_ingredient("se-space-radiation-laboratory", "lead-plate", 100)
util.add_ingredient("se-delivery-cannon", "lead-plate", 16)
util.add_ingredient("se-meteor-point-defence", "lead-plate", 16)
util.add_ingredient("se-meteor-defence", "lead-plate", 64)

util.add_ingredient("se-experimental-alloys-data", "lead-plate", 1)
util.add_to_product("se-experimental-alloys-data", "se-experimental-alloys-data", 1)
util.add_to_product("se-experimental-alloys-data", "se-scrap", 1)
util.add_to_ingredient("se-experimental-alloys-data", "se-empty-data", 1)



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

util.add_ingredient("howitzer-turret-recipe", "lead-plate", 8)

-- Additional turrets
util.add_ingredient("at-acidthrower-turret", "lead-plate", 4)
util.add_ingredient("at-cannon-turret-mk1", "lead-plate", 4)
util.add_ingredient("at-rocket-turret-mk1", "lead-plate", 4)
util.replace_ingredient("small-coal-cannon-shell", "copper-plate", "lead-plate")
util.replace_ingredient("small-coal-cannon-shell", "copper-plate", "lead-plate")
util.add_ingredient("at_A1_b", "lead-plate", 20)

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

-- Scraver's Atomic Artillery
util.add_ingredient("sc-atomic-artillery-turret", "lead-plate", 40)

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

-- Atomic Overhaul
util.replace_ingredient("empty-fuel-cell-recipe", "plastic-bar", "lead-plate")

-- Nuclear Fuel
if mods["Nuclear Fuel"] then
  util.add_ingredient("nuclear-reactor", "lead-plate", 500)

  util.replace_ingredient("breeder-fuel-cell", "iron-plate", "lead-plate")
  util.replace_ingredient("mox-fuel-cell", "iron-plate", "lead-plate")
end

-- Plutonium Energy
if mods["PlutoniumEnergy"] then
  util.add_ingredient("breeder-reactor", "lead-plate", 1000)
  util.add_ingredient("MOX-reactor", "lead-plate", 200)
  util.add_ingredient("nuclear-reactor", "lead-plate", 500)

  util.replace_ingredient("breeder-fuel-cell", "iron-plate", "lead-plate")
  util.replace_ingredient("breeder-fuel-cell-from-uranium-cell", "iron-plate", "lead-plate")
  util.replace_ingredient("breeder-fuel-cell-from-MOX-fuel-cell", "iron-plate", "lead-plate")
  util.replace_ingredient("MOX-fuel-cell", "iron-plate", "lead-plate")
  util.replace_ingredient("plutonium-fuel-cell", "iron-plate", "lead-plate")
end

-- True Nukes
util.replace_ingredient("tritium-breeder-fuel-cell", "iron-plate", "lead-plate")

-- Shivero's nuclear
util.replace_ingredient("shiveros_thorium_fuel_cell", "iron-plate", "lead-plate")
util.replace_ingredient("shiveros_plutonium_fuel_cell", "iron-plate", "lead-plate")
util.replace_ingredient("shiveros_uranium-233_fuel_cell", "iron-plate", "lead-plate")
util.replace_ingredient("shiveros_uranium-234_fuel_cell", "iron-plate", "lead-plate")

-- Transplutonic
util.replace_some_ingredient("pu238-fuel", "steel-plate", 5, "lead-plate", 5)
util.replace_some_ingredient("np237-fuel", "steel-plate", 5, "lead-plate", 5)
util.replace_some_ingredient("plutonium-mix-fuel", "steel-plate", 5, "lead-plate", 5)
util.replace_some_ingredient("neptunium-mix-fuel", "steel-plate", 5, "lead-plate", 5)
util.replace_some_ingredient("uranium-mix-fuel", "steel-plate", 5, "lead-plate", 5)
util.replace_some_ingredient("plutonium-inv-dead", "steel-plate", 5, "lead-plate", 5)
util.replace_some_ingredient("neptunium-inv-dead", "steel-plate", 5, "lead-plate", 5)
util.replace_some_ingredient("uranium-inv-dead", "steel-plate", 5, "lead-plate", 5)
util.replace_ingredient("castorempty", "iron-plate", "lead-plate")
if not mods["PlutoniumEnergy"] then util.add_ingredient("breeder-reactor", "lead-plate", 250) end
util.add_ingredient("particle-accelerator", "lead-plate", 250)

-- Hazmat suit
util.add_ingredient("hazmat-suit", "lead-plate", 2)
util.add_ingredient("mil-grade-fuel-cell", "lead-plate", 10)

-- RITEG
util.add_ingredient("RITEG-1", "lead-plate", 10)
util.add_ingredient("RITEG-cyan", "lead-plate", 10)
util.add_ingredient("RITEG-breeder", "lead-plate", 10)

-- Zane's Car Turret
util.add_ingredient("car-turret", "lead-plate", 4)

-- Endgame Combat
util.add_ingredient("concussion-turret", "lead-plate", 20)
util.add_ingredient("sticky-turret", "lead-plate", 4)
util.add_ingredient("cannon-turret", "lead-plate", 20)
util.add_ingredient("plasma-turret", "lead-plate", 8)


-- Other
util.add_ingredient("hl-rocket-turret-recipe", "lead-plate", 20)


-- Realistic Reactors
util.add_ingredient("reactor-sarcophagus", "lead-plate", 300)

-- Nuclear locomotive
util.replace_ingredient("Nuclear_Train", "iron-plate", "lead-plate")

-- Uranium Rework
util.add_ingredient("uraniumrework-uranium-waste-container", "lead-plate", 25)

-- Schall
util.add_ingredient("Schall-radioactive-waste-incinerator", "lead-plate", 25)
util.replace_ingredient("Schall-sniper-firearm-magazine", "iron-plate", "lead-plate")
util.add_ingredient("Schall-rocket-turret", "lead-plate", 8)
util.add_ingredient("Schall-minigun-turret", "lead-plate", 8)
util.add_ingredient("Schall-sniper-turret", "lead-plate", 16)
util.add_ingredient("Schall-force-cannon-turret", "lead-plate", 16)
util.add_ingredient("Schall-particle-beam-turret", "lead-plate", 16)
util.add_ingredient("Schall-mega-particle-beam-turret", "lead-plate", 32)
util.add_ingredient("Schall-particle-cannon-turret", "lead-plate", 32)
util.add_ingredient("Schall-BFG-turret", "lead-plate", 64)
util.add_ingredient("Schall-cannon-turret", "lead-plate", 16)
util.add_ingredient("Schall-autocannon-turret", "lead-plate", 16)
util.add_ingredient("Schall-cannon-H1-turret", "lead-plate", 16)
util.add_ingredient("Schall-cannon-H2-turret", "lead-plate", 64)

-- Nuclear Reprocessing Rebalance
util.replace_product("nuclear-fuel-reprocessing", "iron-plate", "lead-plate")

-- Water turret
util.add_ingredient("WT-water-turret", "lead-plate", 4)

-- MadClown's Nuclear
util.replace_ingredient("mixed-oxide", "iron-plate", "lead-plate")


-- Angel's storage, AAI, Warehousing, etc.
util.replace_some_ingredient("angels-pressure-tank-1", "steel-plate", 10, "lead-plate", 20)
util.add_ingredient("angels-warehouse", "lead-plate", 20)
util.add_ingredient("silo", "lead-plate", 8)
util.add_ingredient("aai-warehouse", "lead-plate", 20)
util.add_ingredient("aai-storehouse", "lead-plate", 8)
util.add_ingredient("warehouse-basic", "lead-plate", 20)
util.add_ingredient("storehouse-basic", "lead-plate", 8)

-- Leighzer's scrap
if mods.leighzerscrapyards then
  util.add_to_product("scrap-processing", "iron-plate", -1)
  util.add_product("scrap-processing", { "lead-plate", 1 })
end

util.add_minable_result("simple-entity", "huge-volcanic-rock",
  { type = "item", name = "lead-ore", amount_min = 10, amount_max = 24 })
util.add_minable_result("simple-entity", "big-volcanic-rock",
  { type = "item", name = "lead-ore", amount_min = 5, amount_max = 10 })
util.add_gleba_rock("lead-ore")
