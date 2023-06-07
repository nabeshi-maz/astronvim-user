-- place this in one of your configuration file(s)
local hop = require('hop')

return {
  -- first key is the mode
  n = {
    ["<leader>a"] = { "ggVG", desc = "Select All" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- hop
    ["F"] = { ":HopWord<Enter>", remap=true},
    -- other
    ["<leader>O"] = {":Other<Enter>", desc = "show other files related to current file"},
    ["<leader>f'"] = {function () require('telescope').extensions.vim_bookmarks.all() end, desc = 'all bookmarks'},
    -- telescope diagnostic
    ["<leader>fe"] = {':Telescope diagnostics<Enter>', desc = 'find diagnositc'},
    -- telescope file browser
    ["<leader>fd"] = {':Telescope file_browser<Enter>',noremap=true, desc = 'find file browser'},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
