vim.keymap.set('n', '<leader>t', require('telescope.builtin').resume, { desc = 'Telescope Resume' })
-- vim.keymap.set('n', '<leader>p', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<Leader>p', ':lua require"telescope.builtin".find_files({ hidden = true, file_ignore_patterns = {".git/", ".cache" }})<CR>', {noremap = true, silent = true})
-- vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>re', require('telescope.builtin').oldfiles, { desc = '[S]earch R[E]cent]' })
-- vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
-- vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
-- vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set("n", "<leader>cd", ':SearchSession<CR>')
vim.keymap.set('n', '\\', require('telescope.builtin').live_grep, { desc = 'Search by Grep' })
-- vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })

vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

-- sneaky exit insert mode
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('i', 'kk', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')

-- primagen
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

-- save / reset
vim.api.nvim_set_keymap('n', '<leader>R', ':edit!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })

-- format
-- vim.keymap.set('n', '<leader>f', ':Neoformat<CR>')

-- Tabs
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>')
vim.keymap.set('n', '<leader>bQ', ':%bd|e#|bd#<CR>')
vim.keymap.set('n', '<leader>bq', ':bp <BAR> bd #<CR>')


-- Abbreviations
vim.cmd('abb log console.log()<Left>')
vim.cmd('abb af () =>')
vim.cmd('abb sfy JSON.stringify(x, null, 2)<Esc>Fxa<Backspace>')
vim.cmd('abb debug <pre>{JSON.stringify(x, null, 2)}</pre><Esc>Fxa<Backspace>')
vim.cmd('abb tsignore // @ts-ignore')
vim.cmd('abb rsf export const x = (props: Props) => (<></>)<Esc>Fxa<Backspace><Backspace>')
vim.cmd('abb rfc export const x = () =><Esc>Fxs')
vim.cmd('abb uss const [] = useState()<Esc>F[a')
vim.cmd('abb fun function x() {}<Esc>Fxa<Backspace>')
vim.cmd('abb ustr const { t } = useTranslation()')
vim.cmd('abb usd const { x } = useDiagnosticsStore()<Esc>Fxs')
vim.cmd('abb tr {t(\'\')}<Esc>F\'i')
