require("mason").setup({
	--	PATH = "prepend", -- "skip" seems to cause the spawning error
    registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
    },
})
require("rojo").setup()

require("config.remap")
require("config.packer")
require("config.set")
