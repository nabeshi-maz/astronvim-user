-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection
return {
  -- first key is the mode
  n = {
    ["<leader>a"] = { "ggVG", desc = "Select All" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<C-S>"] = { ":wa<cr>", desc = "Save all File" },  -- change description but the same command
    -- hop
    ["<leader>h"] = { ":HopWord<Enter>", remap=true},
    ["f"] = {function() hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true }) end, desc='hop current line word'},
    ["F"] = {function() hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true }) end, desc='hop current line word'},
    -- other
    ["<leader>O"] = {":Other<Enter>", desc = "show other files related to current file"},
    ["<leader>f'"] = {function () require('telescope').extensions.vim_bookmarks.all() end, desc = 'all bookmarks'},
    -- telescope diagnostic
    ["<leader>fe"] = {':Telescope diagnostics<Enter>', desc = 'find diagnositc'},
    -- telescope file browser
    ["<leader>fd"] = {':Telescope file_browser<Enter>',noremap=true, desc = 'find file browser'},
    -- telescope find arg
    ["<leader>fg"] = {":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", desc ='find arg'},
    -- lspsaga
    ["K"] = {"<cmd>Lspsaga hover_doc<CR>", desc ='lspsaga hover doc'},
    -- ["<leader>o"] = {"<cmd>Lspsaga outline<CR>", desc ='lspsaga outline'},
    ["gf"]={ "<cmd>Lspsaga lsp_finder<CR>", desc ='lspsaga finder'},
    ["gD"]={ "<cmd>Lspsaga peek_definition<CR>", desc ='lspsaga peek definition'},
    ["gd"]={ "<cmd>Lspsaga goto_definition<CR>", desc ='lspsaga goto definition'},
    ["gT"]={ "<cmd>Lspsaga peek_type_definition<CR>", desc ='lspsaga peek type definition'},
    ["gt"]={ "<cmd>Lspsaga goto_type_definition<CR>", desc ='lspsaga goto type definition'},
    ["<leader>sl"]={ "<cmd>Lspsaga show_line_diagnostics<CR>", desc ='lspsaga show line diagnositcs'},
    ["<leader>sb"]={ "<cmd>Lspsaga show_buf_diagnostics<CR>", desc ='lspsaga show buffert diagnostics'},
    ["<leader>sw"]={ "<cmd>Lspsaga show_workspace_diagnostics<CR>", desc ='lspsaga show woorkspace diagnositcs'},
    ["<leader>sc"]={ "<cmd>Lspsaga show_cursor_diagnostics<CR>", desc ='lspsaga show cursor diagnostics'},
    ["[e"]={ "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc ='lspsaga diagnostic_jump_prev'},
    ["]e"]={ "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc ='lspsaga diagnostic_jump_prev'},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
