lvim.autocommands = {
  -- wgsl buffer config
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
  -- C# buffer config
},
  {
    "BufNewFile", {
    pattern = { "*.cs" },
    callback = function()
      vim.cmd [[set shiftwidth=4]]
    end
  } }, {
  "BufEnter", {
  pattern = { "*.cs" },
  callback = function()
    vim.cmd [[set shiftwidth=4]]
  end
} }, {
  "BufWinEnter", {
  pattern = { "*.cs" },
  callback = function()
    vim.cmd [[set shiftwidth=4]]
  end
},
},
  {
    "BufNewFile", {
    pattern = { "*.cpp" },
    callback = function()
      vim.cmd [[set shiftwidth=3]]
    end
  } }, {
  "BufEnter", {
  pattern = { "*.cpp" },
  callback = function()
    vim.cmd [[set shiftwidth=3]]
  end
} }, {
  "BufWinEnter", {
  pattern = { "*.cpp" },
  callback = function()
    vim.cmd [[set shiftwidth=3]]
  end
},
}
}

vim.opt.spell = true
vim.opt.spelllang = "en,ru"
-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = { "*.lua", "*.rs", "*.wgsl", "*.c", "*.cs", "*.cpp", "*.h" },
  timeout = 1000,
}
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.keys.normal_mode["Жц<cr>"] = ":w<cr>"

lvim.keys.normal_mode["<leader>lD"] = ":Neogen<cr>"
lvim.keys.normal_mode["<leader>дВ"] = ":Neogen<cr>"

lvim.keys.normal_mode["р"] = "h"
lvim.keys.normal_mode["о"] = "j"
lvim.keys.normal_mode["л"] = "k"
lvim.keys.normal_mode["д"] = "l"
lvim.keys.normal_mode["ф"] = "a"
lvim.keys.normal_mode["Ф"] = "A"
lvim.keys.normal_mode["а"] = "f"
lvim.keys.normal_mode["А"] = "F"

lvim.keys.normal_mode["ш"] = "i"
lvim.keys.normal_mode["Ш"] = "I"

lvim.keys.normal_mode["к"] = "r"

lvim.keys.normal_mode["н"] = "y"
lvim.keys.normal_mode["з"] = "p"

lvim.keys.normal_mode["в"] = "d"
lvim.keys.normal_mode["вв"] = "dd"

lvim.keys.normal_mode["и"] = "b"
lvim.keys.normal_mode["ц"] = "w"

lvim.keys.normal_mode["г"] = "u"
lvim.keys.normal_mode["Ё"] = "~"

lvim.keys.normal_mode["<C-к>"] = "<C-r>"


lvim.keys.normal_mode["м"] = "v"
lvim.keys.normal_mode["М"] = "V"


lvim.keys.normal_mode["ч"] = "x"
lvim.keys.normal_mode["Ч"] = "X"


lvim.keys.visual_mode["<C-s>"] = ":w<cr>"

lvim.keys.visual_mode["Жц<cr>"] = ":w<cr>"

lvim.keys.visual_mode["<leader>lD"] = ":Neogen<cr>"
lvim.keys.visual_mode["<leader>дВ"] = ":Neogen<cr>"

lvim.keys.visual_mode["р"] = "h"
lvim.keys.visual_mode["о"] = "j"
lvim.keys.visual_mode["л"] = "k"
lvim.keys.visual_mode["д"] = "l"
lvim.keys.visual_mode["ф"] = "a"
lvim.keys.visual_mode["Ф"] = "A"
lvim.keys.visual_mode["а"] = "f"
lvim.keys.visual_mode["А"] = "F"

lvim.keys.visual_mode["ш"] = "i"
lvim.keys.visual_mode["Ш"] = "I"

lvim.keys.visual_mode["к"] = "r"

lvim.keys.visual_mode["н"] = "y"
lvim.keys.visual_mode["з"] = "p"

lvim.keys.visual_mode["в"] = "d"
lvim.keys.visual_mode["вв"] = "dd"

lvim.keys.visual_mode["и"] = "b"
lvim.keys.visual_mode["ц"] = "w"

lvim.keys.visual_mode["г"] = "u"
lvim.keys.visual_mode["Ё"] = "~"

lvim.keys.visual_mode["ч"] = "x"
lvim.keys.visual_mode["Ч"] = "X"

lvim.keys.visual_mode["<C-к>"] = "<C-r>"


-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
--
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
-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
  {
    "kylechui/nvim-surround",
    "ciubix8513/vim-colorschemes",
    "barrientosvctor/abyss.nvim",
    "lambdalisue/suda.vim",
    "p00f/clangd_extensions.nvim",
    "simrat39/rust-tools.nvim",
    "wakatime/vim-wakatime",
    "iamcco/markdown-preview.nvim",
    "sakhnik/nvim-gdb",
    "norcalli/nvim-colorizer.lua",
    {
      "danymat/neogen",
      config = true,
    },
    {
      "uga-rosa/translate.nvim",
      config = true,
    }
  },
}


lvim.keys.normal_mode["<leader>lT"] = ":Translate ru -output=replace<cr>"
lvim.keys.normal_mode["<leader>дЕ"] = ":Translate ru -output=replace<cr>"


lvim.keys.visual_mode["<leader>lT"] = ":Translate ru -output=replace<cr>"
lvim.keys.visual_mode["<leader>дЕ"] = ":Translate ru -output=replace<cr>"

vim.keymap.set("v", "<leader>S{", function()
  require("nvim-surround").normal_surround('{}')
end)


local executors = require "rust-tools.executors"
require("rust-tools").setup {
  tools = {
    executor = executors.toggleterm,
    runnables = {
      use_telescope = true,
    },
    autosethints = true,
    inlay_hints = { show_parameter_hints = true },
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
        -- cargo = {
        --   target = "wasm32-unknown-unknown"
        -- },
        procMacro = {
          enable = true
        },
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



vim.diagnostic.config({ virtual_text = true })

lvim.builtin.treesitter.highlight.enable = true

-- auto install treesitter parsers
lvim.builtin.treesitter.ensure_installed = { "cpp", "c" }

-- Additional Plugins
table.insert(lvim.plugins, {
})

-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "clangd", "csharp_ls" })
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "clangd" })

-- some settings can only passed as commandline flags, see `clangd --help`
local clangd_flags = {
  "--background-index",
  "--fallback-style=Google",
  "--all-scopes-completion",
  "--clang-tidy",
  "--log=error",
  "--suggest-missing-includes",
  "--cross-file-rename",
  "--completion-style=detailed",
  "--pch-storage=memory",     -- could also be disk
  "--folding-ranges",
  "--enable-config",          -- clangd 11+ supports reading from .clangd configuration file
  "--offset-encoding=utf-16", --temporary fix for null-ls
  -- "--limit-references=1000",
  -- "--limit-resutls=1000",
  -- "--malloc-trim",
  -- "--clang-tidy-checks=-*,llvm-*,clang-analyzer-*,modernize-*,-modernize-use-trailing-return-type",
  -- "--header-insertion=never",
  -- "--query-driver=<list-of-white-listed-complers>"
}

local provider = "clangd"

local custom_on_attach = function(client, bufnr)
  require("lvim.lsp").common_on_attach(client, bufnr)

  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "<leader>lh", "<cmd>ClangdSwitchSourceHeader<cr>", opts)
  vim.keymap.set("x", "<leader>lA", "<cmd>ClangdAST<cr>", opts)
  vim.keymap.set("n", "<leader>lH", "<cmd>ClangdTypeHierarchy<cr>", opts)
  vim.keymap.set("n", "<leader>lt", "<cmd>ClangdSymbolInfo<cr>", opts)
  vim.keymap.set("n", "<leader>lm", "<cmd>ClangdMemoryUsage<cr>", opts)

  require("clangd_extensions.inlay_hints").setup_autocmd()
  require("clangd_extensions.inlay_hints").set_inlay_hints()
end

local status_ok, project_config = pcall(require, "rhel.clangd_wrl")
if status_ok then
  clangd_flags = vim.tbl_deep_extend("keep", project_config, clangd_flags)
end

local custom_on_init = function(client, bufnr)
  require("lvim.lsp").common_on_init(client, bufnr)
  require("clangd_extensions.config").setup {}
  require("clangd_extensions.ast").init()
  vim.cmd [[
  command ClangdToggleInlayHints lua require('clangd_extensions.inlay_hints').toggle_inlay_hints()
  command -range ClangdAST lua require('clangd_extensions.ast').display_ast(<line1>, <line2>)
  command ClangdTypeHierarchy lua require('clangd_extensions.type_hierarchy').show_hierarchy()
  command ClangdSymbolInfo lua require('clangd_extensions.symbol_info').show_symbol_info()
  command -nargs=? -complete=customlist,s:memuse_compl ClangdMemoryUsage lua require('clangd_extensions.memory_usage').show_memory_usage('<args>' == 'expand_preamble')
  ]]
end

local opts = {
  cmd = { provider, unpack(clangd_flags) },
  on_attach = custom_on_attach,
  on_init = custom_on_init,
}

require("lvim.lsp.manager").setup("clangd", opts)
-- require("lvim.lsp.manager").setup("csharp_ls")
require("lvim.lsp.manager").setup("neocmake")
require("lvim.lsp.manager").setup("lua_ls")
require("lvim.lsp.manager").setup("html")
require("lvim.lsp.manager").setup("cssls")
require("lvim.lsp.manager").setup("vimls")


-- install codelldb with :MasonInstall codelldb
-- configure nvim-dap (codelldb)
lvim.builtin.dap.on_config_done = function(dap)
  dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
      -- provide the absolute path for `codelldb` command if not using the one installed using `mason.nvim`
      command = "codelldb",
      args = { "--port", "${port}" },

      -- On windows you may have to uncomment this:
      -- detached = false,
    },
  }

  dap.configurations.cpp = { {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      local path
      vim.ui.input({ prompt = "Path to executable: ", default = vim.loop.cwd() .. "/build/" }, function(input)
        path = input
      end)
      vim.cmd [[redraw]]
      return path
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  }, }

  dap.configurations.c = dap.configurations.cpp

  dap.configurations.rust = { {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      local path
      vim.ui.input({ prompt = "Path to executable: ", default = vim.loop.cwd() .. "/target/debug/" }, function(input)
        path = input
      end)
      vim.cmd [[redraw]]
      return path
    end,
    args = function()
      local arg
      vim.ui.input({ prompt = "Arguments: " }, function(input)
        arg = input
      end)
      vim.cmd [[redraw]]
      return { arg }
    end,

    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  }, }
end


lvim.builtin.indentlines.options.use_treesitter             = true
lvim.builtin.indentlines.options.show_current_context_start = true
