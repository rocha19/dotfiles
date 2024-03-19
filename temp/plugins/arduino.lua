return {
  {
    "edKotinsky/Arduino.nvim",
    setup = function()
      return {
        default_fqbn = "esp8266:esp8266:esp01",
        clangd = "C:/msys64/clang64/bin", -- require("mason-core.path").bin_prefix("clangd"),
        arduino = "D:/Program Files/Arduino IDE",
        arduino_config_dir = "C:/Users/rocha/AppData/Local/Arduino15",
        require("lspconfig")["arduino_language_server"].setup({
          on_new_config = arduino.on_new_config,
        }),
      }
    end,
  },
}