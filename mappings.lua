-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection

return {
  -- first key is the mode
  n = {
    ["<leader>a"] = { "ggVG", desc = "Select All" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- hop
    ["f"] = { ":HopWord<Enter>", remap=true},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
