return {
  {
    'tzachar/cmp-tabnine',
    build = './install.sh',
    dependencies = 'hrsh7th/nvim-cmp',
    -- config = "plugins.configs.tabnine"
  },
  {
    "kylechui/nvim-surround",
    event = "User AstroFile",
    config = function()
      require('nvim-surround').setup({})
    end
  },
  {
    "declancm/cinnamon.nvim",
    event = "User AstroFile",
    config = function()
      require('cinnamon').setup({})
    end
  },
  {
    "mechatroner/rainbow_csv",
    event = "User AstroFile",
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && yarn install",
    event = "User AstroFile",
    config = function()
      vim.g.mkdp_filetypes = { "markdown" };
      vim.g.mkdp_auto_start = 0;
      vim.g.mkdp_auto_close = 1;
      vim.g.mkdp_refresh_slow = 0;
      vim.g.mkdp_command_for_global = 0;
      vim.g.mkdp_auto_start = 0;
      vim.g.mkdp_auto_close = 1;
      vim.g.mkdp_refresh_slow = 0;
      vim.g.mkdp_command_for_global = 0;
      vim.g.mkdp_open_to_the_world = 0;
      vim.g.mkdp_open_ip = '';
      vim.g.mkdp_browser = '';
      vim.g.mkdp_echo_preview_url = 0;
      vim.g.mkdp_browserfunc = '';
      vim.g.mkdp_markdown_css = '';
      vim.g.mkdp_highlight_css = '';
      vim.g.mkdp_port = '';
      vim.g.mkdp_page_title = '${name}';
      vim.g.mkdp_theme = 'dark';
      vim.keymap.set("n", "<leader>md", "<cmd>MarkdownPreviewToggle<cr>");
    end
  },
  {
    "michaelb/sniprun",
    event = "User AstroFile",
    build = "bash install.sh",
  }
}
