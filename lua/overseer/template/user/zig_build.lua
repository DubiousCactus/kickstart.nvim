return {
  name = 'zig build',
  builder = function()
    return {
      cmd = { 'zig' },
      args = { 'build' },
      components = { { 'on_output_quickfix', open = true }, 'default' },
    }
  end,
  condition = {
    filetype = { 'zig' },
  },
}
