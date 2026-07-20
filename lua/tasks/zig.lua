return {
  build = {
    cmd = 'zig build',
    components = { 'default' },
  },
  run = {
    cmd = 'zig build run',
    depends = { 'build' }, -- Run build first
  },
}
