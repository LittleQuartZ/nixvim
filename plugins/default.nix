{
  imports = [
    ./bufferlines/barbar.nix
    ./bufferlines/bufferline.nix

    ./colorschemes/base16.nix
    ./colorschemes/gruvbox.nix
    ./colorschemes/nord.nix
    ./colorschemes/one.nix
    ./colorschemes/onedark.nix
    ./colorschemes/tokyonight.nix

    ./completion/coq.nix
    ./completion/copilot.nix
    ./completion/nvim-cmp
    ./completion/nvim-cmp/sources
    ./completion/lspkind.nix

    ./git/fugitive.nix
    ./git/gitgutter.nix
    ./git/neogit.nix

    ./languages/ledger.nix
    ./languages/nix.nix
    ./languages/treesitter.nix
    ./languages/zig.nix

    ./null-ls

    ./nvim-lsp
    ./nvim-lsp/lspsaga.nix
    ./nvim-lsp/lsp-lines.nix
    ./nvim-lsp/trouble.nix

    ./pluginmanagers/packer.nix

    ./snippets/luasnip

    ./statuslines/airline.nix
    ./statuslines/lightline.nix
    ./statuslines/lualine.nix

    ./telescope

    ./utils/comment-nvim.nix
    ./utils/commentary.nix
    ./utils/easyescape.nix
    ./utils/endwise.nix
    ./utils/floaterm.nix
    ./utils/goyo.nix
    ./utils/intellitab.nix
    ./utils/mark-radar.nix
    ./utils/notify.nix
    ./utils/nvim-autopairs.nix
    ./utils/nvim-tree.nix
    ./utils/project-nvim.nix
    ./utils/specs.nix
    ./utils/startify.nix
    ./utils/surround.nix
    ./utils/undotree.nix
    ./utils/dashboard.nix
    ./utils/emmet.nix
  ];
}
