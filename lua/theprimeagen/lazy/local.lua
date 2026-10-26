local local_plugins = {
    --{
    --    "cockpit",
    --    dir = "~/personal/cockpit",
    --    config = function()
    --        require("cockpit")
    --        vim.keymap.set("n", "<leader>ct", "<cmd>CockpitTest<CR>")
    --        vim.keymap.set("n", "<leader>cr", "<cmd>CockpitRefresh<CR>")
    --    end,
    --},

    -- {
    -- 	"55",
    -- 	dir = "~/personal/55",
    -- 	config = function()
    -- 		-- local _55 = require("55")
    -- 		-- _55.setup({
    -- 		-- 	name_map = {
    -- 		-- 		un2 = "unnamed_game_1",
    -- 		-- 	},
    -- 		-- 	linear = {
    -- 		-- 		projects = {
    -- 		-- 			unnamed_game_1 = {
    -- 		-- 				team = "Mordoria",
    -- 		-- 				project = "Mordoria",
    -- 		-- 			},
    -- 		-- 		},
    -- 		-- 	},
    -- 		-- })
    -- 		-- vim.keymap.set("n", "<leader>55", function()
    -- 		-- 	_55.start()
    -- 		-- end)
    -- 		-- vim.keymap.set("n", "<leader>5t", function()
    -- 		-- 	_55.toggle_diff_lines()
    -- 		-- end)
    -- 		-- vim.keymap.set("n", "<leader>5r", function()
    -- 		-- 	_55.toggle_diff_lines()
    -- 		-- 	_55.toggle_diff_lines()
    -- 		-- end)
    -- 		-- vim.keymap.set("n", "<leader>5s", function()
    -- 		-- 	_55.refresh_server()
    -- 		-- end)
    -- 		-- vim.keymap.set("n", "<leader>5h", function()
    -- 		-- 	_55.home()
    -- 		-- end)
    -- 		-- vim.keymap.set("n", "<leader>5i", function()
    -- 		-- 	_55.inspect()
    -- 		-- end)
    -- 	end,
    -- },
    -- {
    -- 	"the-stru",
    -- 	dir = "~/personal/the-stru",
    -- },

    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()

            vim.keymap.set("n", "<leader>A", function()
                harpoon:list():prepend()
            end)
            vim.keymap.set("n", "<leader>a", function()
                harpoon:list():add()
            end)
            vim.keymap.set("n", "<C-e>", function()
                harpoon.ui:toggle_quick_menu(harpoon:list())
            end)

            vim.keymap.set("n", "<M-1>", function()
                harpoon:list():select(1)
            end)
            vim.keymap.set("n", "<M-2>", function()
                harpoon:list():select(2)
            end)
            vim.keymap.set("n", "<M-3>", function()
                harpoon:list():select(3)
            end)
            vim.keymap.set("n", "<M-4>", function()
                harpoon:list():select(4)
            end)
        end,
    },
}

return local_plugins
