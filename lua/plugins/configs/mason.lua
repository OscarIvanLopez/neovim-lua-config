local options = {
  ensure_installed = { "lua-language-server" }, -- not an option from mason.nvim

  PATH = "prepend",

  log_level = vim.log.levels.INFO,


  registries = {
    "github:mason-org/mason-registry",
  },

  providers = {
    "mason.providers.registry-api",
    "mason.providers.client",
  },

  github = {
    download_url_template = "https://github.com/%s/releases/download/%s/%s",
  },

  pip = {
    upgrade_pip = false,

    install_args = {},
  },

  ui = {
    icons = {
      package_pending = " ",
      package_installed = "󰄳 ",
      package_uninstalled = " 󰚌",
    },

    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
      cancel_installation = "<C-c>",
    },
  },

  max_concurrent_installers = 10,
}

return options
