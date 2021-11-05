local nvim_lsp = require("lspconfig")

------- Python
nvim_lsp.pyright.setup{}

------- Lua
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

--- Start the lua lsp
nvim_lsp.sumneko_lua.setup {
  cmd = {"/home/ritux/repos/lua-language-server/bin/Linux/lua-language-server", "-E", "/home/ritux/repos/lua-language-server/bin/Linux/" .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

local saga = require("lspsaga")

saga.init_lsp_saga {
    error_sign = ' ',
    warn_sign = ' ',
    hint_sign = ' ',
    infor_sign = ' ',
    dianostic_header_icon = '   ',
    code_action_prompt = {
        enable = true,
        sign = true,
        sign_priority = 20,
        virtual_text = true,
    },
    border_style = "sharp",
}

