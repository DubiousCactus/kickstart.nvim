return {
  name = 'zig run',
  builder = function()
    return {
      cmd = { 'zig' },
      args = { 'build', 'run' },
      depends = { 'zig build' },
      components = { { 'on_output_quickfix', open = true }, 'default' },
    }
  end,
  condition = {
    filetype = { 'zig' },
  },
}
