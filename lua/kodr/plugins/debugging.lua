return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio",
        "rcarriga/nvim-dap-ui"
    },
    config = function()
        local dap, dapui = require("dap"), require("dapui")
        dapui.setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        dap.adapters.unity = {
            type = "executable",
            command = "C:\\Program Files\\Mono\\bin",
            args = { "C:\\Users\\erick\\.vscode\\extensions\\p1gd0g.unity-debug-301-4.0.1\\bin\\UnityDebug.exe" },
        }
        dap.configurations.cs = {
            {
                type = "unity",
                request = "attach",
                name = "Unity Editor",
            },
        }
        vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint)
        vim.keymap.set("n", "<leader>dc", dap.continue)
    end,
}
