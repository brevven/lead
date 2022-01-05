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
})
