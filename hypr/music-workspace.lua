hl.window_rule({
    name = "spotify-in-special-workspace",
    workspace = "special:music",
    match = {
        class = "[Ss]potify"
    },
})

hl.workspace_rule({
    workspace = "special:music",
    gaps_in = 60,
    gaps_out = 60
})
