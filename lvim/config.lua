--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]
lvim.autocommands = {
  {
    "BufNewFile", {
    pattern = { "*.wgsl" },
    callback = function()
      vim.cmd [[set filetype=wgsl]]
      vim.cmd [[set commentstring=//%s]]
    end
  } }, {
  "BufEnter", {
  pattern = { "*.wgsl" },
  callback = function()
    vim.cmd [[set filetype=wgsl]]
    vim.cmd [[set commentstring=//%s]]
  end
} }, {
  "BufWinEnter", {
  pattern = { "*.wgsl" },
  callback = function()
    vim.cmd [[set filetype=wgsl]]
    vim.cmd [[set commentstring=//%s]]
  end
},
}
}

vim.opt.spell = true
-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = { "*.lua", "*.rs", "*.wgsl" },
  timeout = 1000,
}
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"


-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- -- Change theme settings
lvim.colorscheme = "abyss_corrected"

-- After changing plugin config exit and reopen LunarVim, Run :PackerSync
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- lvim.builtin.treesitter.ignore_install = { "haskell" }

-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls" end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "stylua" },
--   {
--     command = "prettier",
--     extra_args = { "--print-with", "100" },
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     command = "shellcheck",
--     args = { "--severity", "warning" },
--   },
-- }

-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
  {
    "wakatime/vim-wakatime",
    "Ciubix8513/vim-colorschemes",
    "lambdalisue/suda.vim",
    "andweeb/presence.nvim",
    {
      "simrat39/rust-tools.nvim",
    }
  },
}
local executors = require "rust-tools.executors"
require("rust-tools").setup {
  tools = {
    executor = executors.toggleterm,
    runnables = {
      use_telescope = true,
    },
    autosethints = true,
    inlay_hints = { show_parameter_hints = true },
    -- hover_actions = { auto_focus = true }
  },
  server = {
    on_attach = function(client, bufnr)
      require("lvim.lsp").common_on_attach(client, bufnr)
      local rt = require "rust-tools"
      vim.keymap.set("n", "<leader>la", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
    on_init = require("lvim.lsp").common_on_init,
    settings = {
      ["rust-analyzer"] = {
        lens = {
          enable = true,
        },
        checkonsave = {
          command = "clippy",
        },
      },
    },
  },
}
lvim.lsp.installer.setup.ensure_installed = {}



--
--
-- require('rust-tools').inlay_hints.enable()



-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "wgsl_analyzer" })
-- local opts =
-- {
--   filetypes = "wgsl"
--   -- command: "wgsl_analyzer",
--   -- "command": "wgsl_analyzer",
--   -- "filetypes": ["wgsl"],
-- }


-- require("lvim.lsp.manager").setup("wgsl_analyzer", opts)
