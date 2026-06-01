hl.window_rule({
    name = "discord-in-special-workspace",
    workspace = "special:discord",
    match = {
        class = "[Vv]esktop"
    },
})

hl.workspace_rule({
    workspace = "special:discord",
    gaps_in = 15,
    gaps_out = 15
})
