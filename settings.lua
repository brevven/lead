data:extend({
  {
		type = "string-setting",
		name = "bzlead-recipe-bypass",
		setting_type = "startup",
		default_value = "",
    allow_blank = true,
	},
  {
		type = "string-setting",
		name = "bzlead-more-entities",
		setting_type = "startup",
		default_value = "no",
    allowed_values = {"yes", "no"},
	},
  { -- TODO remove this in 2022
		type = "string-setting",
		name = "bzlead-sulfuric",
		setting_type = "startup",
		default_value = "yes",
    allowed_values = {"yes", "no"},
	},
})
