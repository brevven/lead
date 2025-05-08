local util = require("__bzlead__.data-util");

-- Deadlock stacking recipes
if deadlock and deadlock["add_stack"] then
  deadlock.add_stack("lead-ore",  "__bzlead__/graphics/icons/stacked/lead-ore-stacked.png", "deadlock-stacking-1", 64)
  deadlock.add_stack("lead-plate", "__bzlead__/graphics/icons/stacked/lead-plate-stacked.png" , "deadlock-stacking-1", 64)
  if util.k2() then
    deadlock.add_stack("enriched-lead", "__bzlead__/graphics/icons/stacked/enriched-lead-stacked.png" , "deadlock-stacking-1", 64)
  end
  if data.raw.item["lead-ingot"] then
    deadlock.add_stack("lead-ingot", nil, "deadlock-stacking-1", nil)
  end
end

-- Deadlock crating recipes
if deadlock_crating then
  deadlock_crating.add_crate("lead-ore", "deadlock-crating-1")
  deadlock_crating.add_crate("lead-plate", "deadlock-crating-1")
  if util.k2() then
    deadlock_crating.add_crate("enriched-lead", "deadlock-crating-1")
  end
  if data.raw.item["lead-ingot"] then
    deadlock_crating.add_crate("lead-ingot", "deadlock-crating-1")
  end
end

