require('kanagawa').setup({
    colors = {
        theme = {
            all = {
                ui = {
                    bg        = "none",
                    bg_visual = "#c5c9c5",
                    bg_gutter = "none",
                },
            }
        }
    },
    background = {
        dark = "dragon", -- wave, dragon, lotus, current theme, I figure out later how to setup theme autochange
    },
    overrides = function(colors)
        local theme = colors.theme
        return {
            normalfloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },

            -- Save an hlgroup with dark background and dimmed foreground
            -- so that you can use it where your still want darker windows.
            -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
            NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

            -- Popular plugins that open floats will link to NormalFloat by default;
            -- set their background accordingly if you wish to keep them dark and borderless
            --MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
            PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
            PmenuSbar = { bg = theme.ui.bg_m1 },
            PmenuThumb = { bg = theme.ui.bg_p2 },

--            CursorLine = { bg = theme.ui.fg },
        }
    end,
})

vim.cmd('colorscheme kanagawa')
