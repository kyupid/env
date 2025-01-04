return {
  {
    "mhinz/vim-startify",
    config = function()
      vim.g.startify_lists = {
        { type = "bookmarks", header = { "   📂 Bookmarks 📂" } },
        { type = "sessions", header = { "   🕒 Saved Sessions 🕒" } },
        { type = "files", header = { "   📄 Recent Files 📄" } }
      }
      -- 설정
      vim.g.startify_bookmarks = {
        "~/git/env/neovim/.config/nvim/lua/plugins",
        "~/git/kyupid.github.io/_wiki/root-index.md"
      }
    end,
  }
}
