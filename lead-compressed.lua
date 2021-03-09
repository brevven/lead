
if simpleCompress then
  if simpleCompress.ores then
    simpleCompress.currentSubgroup = "intermediate-product"
    if data.raw.item["lead-ore"] then
      SimpleCompress_AddTintedItem("lead-ore", "ore4-lead", "ore", {r=0.3, g=0.15, b=0.05})
      SimpleCompress_UnlockOreTechAndRecipe("lead-ore")
    end
  end
  if simpleCompress.plates then
    simpleCompress.currentSubgroup = "intermediate-product"
    if data.raw.item["lead-plate"] then
      SimpleCompress_AddTintedItem("lead-plate", "plates4-lead", "plate3", {r=0.25, g=0.15, b=0.05})
      SimpleCompress_UnlockPlateTechAndRecipe("lead-plate")
      local leadRecipe = data.raw.recipe["decompress-lead-plate"]
      leadRecipe.order = "d[lead-plate]"
    end
  end
  if simpleCompress.smelting then
    if data.raw.item["lead-plate"] and data.raw.item["lead-plate"] then
      SimpleCompress_AddSmeltingRecipe("lead-ore", "lead-plate")
      SimpleCompress_UnlockOreSmeltingTech("lead-ore")
      local leadRecipe = data.raw.recipe["smelt-compressed-lead-ore"]
      leadRecipe.results = {
        {type="item", name = "lead-plate", amount=5/6*simpleCompress.CompressedSmeltAmount},
        {type="item", name = "copper-ore", amount=1/6*simpleCompress.CompressedSmeltAmount},
      }
      leadRecipe.icons = {{ icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64 }}
      leadRecipe.subgroup = "raw-material"
      leadRecipe.order = "d[lead-plate]"
    end
  end
end
