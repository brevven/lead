local util = require("__bzlead__.data-util");

if mods["5dim_core"] then
local leb = util.me.more_entities() and "lead-expansion-bolt" or "lead-plate"

  data.raw.item["lead-plate"].subgroup = "plates-plates"
  data.raw.recipe["lead-plate"].subgroup = "plates-plates"
  data.raw.item["lead-ore"].subgroup = "plates-ore"

  if mods["5dim_resources"] then
    -- Industrial furnace
    data:extend({
      {
        type = "recipe",
        name = "lead-plate-industrial-ore",
        category = "industrial-furnace",
        subgroup = "plates-industrial-ore",
        order = "ad[lead-plate]",
        icon = "__bzlead__/graphics/icons/lead-plate.png",
        icon_size = 64, icon_mipmaps = 3,
        enabled = true,
        energy_required = 65,
        ingredients = {util.item("lead-ore", 85)},
        results = {util.item(util.me.lead_plate, 100)},
        main_product = util.me.lead_plate,
        localised_name = {"item-name.lead-plate"},
      }
    })

    -- Lead dust
    data:extend(
      {
          {
              type = "item",
              name = "lead-dust",
              subgroup = "plates-dust",
              order = "d[lead-plate]",
              icon = "__bzlead__/graphics/icons/lead-powder.png",
              icon_size = 64, icon_mipmaps = 3,
              stack_size = 200
          },
          {
              type = "recipe",
              name = "lead-plate-dust",
              icon = "__bzlead__/graphics/icons/lead-plate.png",
              icon_size = 64, icon_mipmaps = 3,
              subgroup = "plates-plates2",
              order = "d[lead-plate]",
              category = "smelting",
              energy_required = 3.2,
              enabled = true,
              ingredients = {
                  util.item("lead-dust", 1)
              },
              results = {util.item(util.me.lead_plate)},
              main_product = util.me.lead_plate,
              localised_name = {"item-name.lead-plate"},
          },
          {
              type = "recipe",
              name = "lead-dust",
              main_product = "lead-dust",
              icon = "__bzlead__/graphics/icons/lead-powder.png",
              icon_size = 64, icon_mipmaps = 3,
              category = "mashering",
              subgroup = "",
              order = "d[lead-plate]",
              energy_required = 3.2,
              enabled = true,
              ingredients = {
                  util.item("lead-ore", 1)
              },
              results = {
                {type="item", name = "lead-dust", amount=2},
              }
          },
          {
            type = "recipe",
            name = "lead-plate-industrial-dust",
            category = "industrial-furnace",
            subgroup = "plates-industrial-dust",
            order = "ad[lead-plate]",
            icon = "__bzlead__/graphics/icons/lead-plate.png",
            icon_size = 64, icon_mipmaps = 3,
            enabled = true,
            energy_required = 65,
            ingredients = {util.item("lead-dust", 85)},
            results = {util.item(util.me.lead_plate, 100)},
            localised_name = {"item-name.lead-plate"},
          }
    })
    local mks = {"01", "02", "03", "04", "05", "06", "07", "08", "09", "10"}
    local items = {"5d-masher-"}
    for i, mk in pairs(mks) do
      for j, item in pairs(items) do 
        util.add_ingredient(item..mk, "lead-plate", 2)
      end
    end
  end

  if mods["5dim_energy"] then
    local mks = {"02", "03", "04", "05", "06", "07", "08", "09", "10"}
    local items = {"5d-substation-", "5d-big-electric-pole-", "5d-solar-panel-"}
    for i, mk in pairs(mks) do
      for j, item in pairs(items) do 
        util.add_ingredient(item..mk, leb, 2)
      end
    end
  end

  if mods["5dim_energy"] then
    local mks = {"02", "03", "04", "05", "06", "07", "08", "09", "10"}
    local items = {"5d-solar-panel-"}
    for i, mk in pairs(mks) do
      for j, item in pairs(items) do 
        util.replace_ingredient(item..mk, "copper-plate", "lead-plate")
      end
    end
  end

  if mods["5dim_battlefield"] then
    local mks = {"01", "02", "03", "04", "05", "06", "07", "08", "09", "10"}
    local items = {"5d-gun-turret-", "5d-gun-turret-big-", "5d-gun-turret-small-"}
    for i, mk in pairs(mks) do
      for j, item in pairs(items) do 
        util.replace_some_ingredient(item..mk, "iron-plate", 2, leb, 2)
      end
      util.replace_some_ingredient("5d-gun-turret-sniper-"..mk, "steel-plate", 1, leb, 1)
    end

  end


end
