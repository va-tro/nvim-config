require('neoclip').setup({
    history = 1000,
    enable_persistent_history = false,
    length_limit = 1048576,
    continuous_sync = false,
    db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
    filter = nil,
    preview = true,
    prompt = nil,
    default_register = '"',
    default_register_macros = 'q',
    enable_macro_history = true,
    content_spec_column = false,
    disable_keycodes_parsing = false,
    dedent_picker_display = false,
    initial_mode = 'insert',
    on_select = {
        move_to_front = false,
        close_telescope = true,
    },
    on_paste = {
        set_reg = false,
        move_to_front = false,
        close_telescope = true,
    },
    on_replay = {
        set_reg = false,
        move_to_front = false,
        close_telescope = true,
    },
    on_custom_action = {
        close_telescope = true,
    },
    keys = {
        fzf = {
            select = 'default',
            paste = 'ctrl-p',
            paste_behind = 'ctrl-k',
            custom = {},
        },
    },
})
