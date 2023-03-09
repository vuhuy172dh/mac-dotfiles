local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

require 'nvim-treesitter.install'.compilers = { "clang" }

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "json",
    "yaml",
    "swift",
    "css",
    "html",
    "lua",
    "javascript"
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    config = {
      javascript = {
        __default = "// %s",
        jsx_element = '{/* %s */}',
        jsx_fragment = '{/* %s */}',
        jsx_attribute = "// %s",
        comment = "// %s"
      },
      typescript = {
        __default = '// %s',
        __multiline = '/* %s */'
      }
    }
  }
}
