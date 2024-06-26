local wezterm = require("wezterm")
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Catppuccin Mocha"

config.font_size = 14
config.font = wezterm.font_with_fallback({
	{ family = "FiraCode Nerd Font", weight = 450 },
	{ family = "JetBrains Mono Nerd Font", weight = "Regular" },
	{ family = "Monaspace Radon", weight = "Regular" },
	{ family = "Monaspace Xenon", weight = "Regular" },
	{ family = "Monaspace Krypton", weight = "Regular" },
	{ family = "Monaspace Argon", weight = "Regular" },
	{ family = "Monaspace Neon", weight = "Medium" },
	{ family = "JuliaMono", weight = "Regular" },
	{ family = "IosevkaTerm Nerd Font", weight = "Regular" },
	{ family = "Operator MonoLig Book", weight = "Regular" },
	{ family = "MonoLisa Nerd Font", weight = "Regular" },
})

config.harfbuzz_features = { "zero", "cv02", "ss02", "ss03", "ss05" }

-- config.font_rules = {
-- 	{
-- 		intensity = "Bold",
-- 		italic = true,
-- 		font = wezterm.font({ family = "Victor Mono", weight = "Bold", style = "Italic" }),
-- 	},
-- 	{
-- 		italic = true,
-- 		intensity = "Half",
-- 		font = wezterm.font({ family = "Victor Mono", weight = "DemiBold", style = "Italic" }),
-- 	},
-- 	{
-- 		italic = true,
-- 		intensity = "Normal",
-- 		font = wezterm.font({ family = "Victor Mono", weight = "DemiBold", style = "Italic" }),
-- 	},
-- }

-- config.window_background_opacity = 0.85

config.warn_about_missing_glyphs = false

config.use_fancy_tab_bar = false

config.tab_bar_at_bottom = true

config.hide_tab_bar_if_only_one_tab = true

config.scrollback_lines = 10000

return config
