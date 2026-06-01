-- Blue light filter
hl.bind(main_mod .. " + I", hl.dsp.exec_cmd("hyprctl hyprsunset temperature 5000"))
hl.bind(main_mod .. " + O", hl.dsp.exec_cmd("hyprctl hyprsunset identity"))

-- Philips Hue lights
hl.bind(main_mod .. " + SHIFT + I", hl.dsp.exec_cmd("openhue set scene Trans.bg"))
hl.bind(main_mod .. " + SHIFT + O", hl.dsp.exec_cmd("openhue set room Chambre --off"))

-- Discord Wwrkspace
hl.bind(main_mod .. " + S", hl.dsp.workspace.toggle_special("discord"))
hl.bind(main_mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:discord" }))

-- Music workspace
hl.bind(main_mod .. " + D", hl.dsp.workspace.toggle_special("music"))
hl.bind(main_mod .. " + SHIFT + D", hl.dsp.window.move({ workspace = "special:music" }))
