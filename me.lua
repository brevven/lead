local me = {}

me.name = "bzlead"
me.resources = {{"lead-ore", "nauvis"}}
me.fluid_mining = false
me.lead_ore = "lead-ore"
me.lead_plate = "lead-plate"
me.recipes = {me.lead_plate, "enriched-lead-plate", "enriched-lead", "lead-smelting-vulcanite", "molten-lead", "enriched-lead-smelting-vulcanite"}

function me.byproduct()
  return me.get_setting("bzlead-byproduct") and not me.get_setting("bz-no-byproduct")
end

function me.more_entities()
  return me.get_setting("bzlead-more-entities") == "yes"
end

function me.more_ammo()
  return me.get_setting("bzlead-more-ammo") == "yes"
end

function me.get_setting(name)
  if settings.startup[name] == nil then
    return nil
  end
  return settings.startup[name].value
end

me.bypass = {}
if me.get_setting(me.name.."-recipe-bypass") then 
  for recipe in string.gmatch(me.get_setting(me.name.."-recipe-bypass"), '[^",%s]+') do
    me.bypass[recipe] = true
  end
end

function me.add_modified(name) 
  if me.get_setting(me.name.."-list") then 
    table.insert(me.list, name)
  end
end


return me
