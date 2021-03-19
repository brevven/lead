
---- For testing only
--local kept1 = false
--for name in pairs(data.raw["utility-constants"]["default"].main_menu_simulations) do
--  if kept1 then
--    data.raw["utility-constants"]["default"].main_menu_simulations[name] = nil
--  end
--  kept1 = true
--end

if (not mods["pyrawores"] and not mods["bobplates"] and not mods["angelssmelting"]) then
data.raw["utility-constants"]["default"].main_menu_simulations["lead-ammo"] = {
  checkboard = false,
  save = "__bzlead__/menu-simulations/lead-ammo-sim.zip", length = 15*60,
  init =
  [[
    local logo = game.surfaces.nauvis.find_entities_filtered{
      name = "factorio-logo-22tiles", limit = 1}[1]
    game.camera_position = {logo.position.x, logo.position.y+14}
    game.camera_zoom = 0.75
    game.tick_paused = false
    game.surfaces.nauvis.daytime = 0
  ]],
  update = [[]]
}
end

