-- From astrovim
require("toggleterm").setup{
  size = 10,
  -- open_mapping = [[<F7>]],
  open_mapping = [[<c-\>]], -- I follows the basic mapping.
  shading_factor = 2,
  direction = "float",
  persist_mode = true, -- Should remember the previous terminal session.
  float_opts = {
    border = "curved",
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
}

