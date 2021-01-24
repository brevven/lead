local util = require("__bzlead__.util");



local items = {"concrete",  "refined-concrete", "stone-brick", "stone-wall"}

local colors =  {
  "acid", "black", "blue", "brown", "cyan", "green",
  "orange", "pink", "purple", "red", "white", "yellow"
}


for i, item in pairs(items) do
  for j, color in pairs(colors) do
    if data.raw.recipe[item.."-"..color] then
      util.add_ingredient(item.."-"..color, "lead-plate", 1)
    end
    if data.raw.recipe[color.."-"..item] then
      util.add_ingredient(color.."-"..item, "lead-plate", 1)
    end
  end
end
