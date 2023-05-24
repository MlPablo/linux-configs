local M = {}

-- local  hop = require('hop')
-- local directions = require('hop.hint').HintDirection
local opts = { remap = true, silent = true }
M.hop = {
  n = {
    ['f'] = {
      function ()
        local  hop = require('hop')
        local directions = require('hop.hint').HintDirection
        hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
      end,
      opts = opts,
    },
    ['F'] = {
      function ()
        local  hop = require('hop')
        local directions = require('hop.hint').HintDirection
        hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
      end,
      opts = opts,
    },
    ['t'] = {
      function ()
        local  hop = require('hop')
        local directions = require('hop.hint').HintDirection
        hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
      end,
      opts = opts,
    },
    ['T'] = {
      function ()
        local  hop = require('hop')
        local directions = require('hop.hint').HintDirection
        hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
      end,
      opts = opts,
    },
    ['s'] = {
      function ()
        local  hop = require('hop')
        local directions = require('hop.hint').HintDirection
        hop.hint_char2({ direction = directions.AFTER_CURSOR })
      end,
      opts = opts,
    },
    ['S'] = {
      function ()
        local  hop = require('hop')
        local directions = require('hop.hint').HintDirection
        hop.hint_char2({ direction = directions.BEFORE_CURSOR })
      end,
      opts = opts,
    },
  },
  o = {
    ['f'] = {
      function ()
        local  hop = require('hop')
        local directions = require('hop.hint').HintDirection
        hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
      end,
      opts = opts,
    },
    ['F'] = {
      function ()
        local  hop = require('hop')
        local directions = require('hop.hint').HintDirection
        hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
      end,
      opts = opts,
    },
    ['t'] = {
      function ()
        local  hop = require('hop')
        local directions = require('hop.hint').HintDirection
        hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
      end,
      opts = opts,
    },
    ['T'] = {
      function ()
        local  hop = require('hop')
        local directions = require('hop.hint').HintDirection
        hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
      end,
      opts = opts,
    },
  }
}

M.goplugin = {
  n = {
    ["<leader>gi"] = {"<cmd> GoIfErr<CR>", "go if err"}
  }
}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left"},
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right"},
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down"},
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up"},
    ["<leader>n"] = {
      function ()
       require("auto-save").toggle()
      end,
      "auto save toggle"
    }
  }
}
M.harpoon = {
  n = {
    ["<leader>mm"] = {
      function ()
       require("harpoon.mark").add_file()
      end,
      "harpoon mark file"
    },
    ["<leader>mt"] = {
      function ()
       require("harpoon.ui").toggle_quick_menu()
      end,
      "show harpooned files"
    }
  }
}


 return M
