-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "tokyonight"

local fonts = {
	"FiraCode Nerd Font",
	"Monaspace Neon",
	"Monaspace Argon",
	"CodeNewRoman Nerd Font",
	"IosevkaTerm Nerd Font",
}

config.font = wezterm.font_with_fallback({ fonts[1] })
config.font_size = 16

config.font_rules = {
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font({ family = "Maple Mono", weight = "Bold", style = "Italic" }),
	},
	{
		italic = true,
		intensity = "Half",
		font = wezterm.font({ family = "Maple Mono", weight = "DemiBold", style = "Italic" }),
	},
	{
		italic = true,
		intensity = "Normal",
		font = wezterm.font({ family = "Maple Mono", weight = "Regular", style = "Italic" }),
	},
}

-- config.window_background_opacity = 0.95

config.warn_about_missing_glyphs = false

config.use_fancy_tab_bar = false

config.tab_bar_at_bottom = true

config.hide_tab_bar_if_only_one_tab = true

config.scrollback_lines = 10000

-- Show which key table is active in the status area
wezterm.on("update-right-status", function(window, pane)
	local name = window:active_key_table()
	if name then
		name = "TABLE: " .. name
	end
	window:set_right_status(name or "")
end)

--[[ config.leader = { key = "Space", mods = "CTRL", timeout_milliseconds = 1000 } ]]
config.keys = {
	-- Resize panes
	--[[ { ]]
	--[[   key = 'r', ]]
	--[[   mods = 'LEADER', ]]
	--[[   action = act.ActivateKeyTable { ]]
	--[[     name = 'resize_pane', ]]
	--[[     one_shot = false, ]]
	--[[   }, ]]
	--[[ }, ]]
	--[[]]
	--[[ -- Activate panes ]]
	--[[ { ]]
	--[[   key = "h", ]]
	--[[   mods = "LEADER", ]]
	--[[   action = act.ActivatePaneDirection "Left", ]]
	--[[ }, ]]
	--[[ { ]]
	--[[   key = "k", ]]
	--[[   mods = "LEADER", ]]
	--[[   action = act.ActivatePaneDirection "Up", ]]
	--[[ }, ]]
	--[[ { ]]
	--[[   key = "j", ]]
	--[[   mods = "LEADER", ]]
	--[[   action = act.ActivatePaneDirection "Down", ]]
	--[[ }, ]]
	--[[ { ]]
	--[[   key = "l", ]]
	--[[   mods = "LEADER", ]]
	--[[   action = act.ActivatePaneDirection "Right", ]]
	--[[ }, ]]
	--[[]]
	-- Split panes
	{
		key = '"',
		mods = "LEADER|SHIFT",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "%",
		mods = "LEADER|SHIFT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
}

-- https://wezfurlong.org/wezterm/config/key-tables.html
config.key_tables = {
	resize_pane = {
		{ key = "LeftArrow", action = act.AdjustPaneSize({ "Left", 1 }) },
		{ key = "h", action = act.AdjustPaneSize({ "Left", 1 }) },
		{ key = "RightArrow", action = act.AdjustPaneSize({ "Right", 1 }) },
		{ key = "l", action = act.AdjustPaneSize({ "Right", 1 }) },
		{ key = "UpArrow", action = act.AdjustPaneSize({ "Up", 1 }) },
		{ key = "k", action = act.AdjustPaneSize({ "Up", 1 }) },
		{ key = "DownArrow", action = act.AdjustPaneSize({ "Down", 1 }) },
		{ key = "j", action = act.AdjustPaneSize({ "Down", 1 }) },

		-- Cancel the mode by pressing escape
		{ key = "Escape", action = "PopKeyTable" },
	},
}

return config
