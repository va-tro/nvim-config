require("fzf-lua").setup({
    "telescope",
    winopts = {
        height = 0.85,
        width = 0.80,
        preview = {
            layout = "flex",
            flip_columns = 120,
        },
    },
})
