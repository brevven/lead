data:extend({
  {
		type = "string-setting",
		name = "bzlead-recipe-bypass",
		setting_type = "startup",
		default_value = "",
    allow_blank = true,
	},
  {
		type = "bool-setting",
		name = "bzlead-byproduct",
		setting_type = "startup",
    default_value = true,
	},
  {
		type = "string-setting",
		name = "bzlead-more-entities",
		setting_type = "startup",
		default_value = "yes",
    allowed_values = {"yes", "no"},
	},
  {
		type = "string-setting",
		name = "bzlead-more-ammo",
		setting_type = "startup",
		default_value = "no",
    allowed_values = {"yes", "no"},
	},
})
