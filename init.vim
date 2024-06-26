set number
set noshowmode
set signcolumn=number

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

"Prettier + setup
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

Plug 'othree/html5.vim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

 Plug 'shellRaining/hlchunk.nvim' " Propojovací line (lua)

Plug 'Exafunction/codeium.vim', { 'branch': 'main' } " Free AI codium

Plug 'm4xshen/autoclose.nvim' " AutocloseTag (lua)

Plug 'https://github.com/scrooloose/nerdtree' " NERDTree postraní panel 

Plug 'neoclide/coc.nvim', {'branch': 'release'} "Coc balíčkovací systém

Plug 'mhinz/vim-startify' " Alternativní startovací obrazovka

Plug 'preservim/nerdcommenter'  " NERD Commenter - komentáře

Plug 'wakatime/vim-wakatime' " Wakatime

Plug 'tpope/vim-fugitive' " Git - vim fugitive

Plug 'lewis6991/gitsigns.nvim' " Git Signs (lua) - prohlížení smazaných řádku

" Telescope (lua)
" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

Plug 'ryanoasis/vim-devicons' " Icons

Plug 'lilydjwg/colorizer' " Náhled barev css

Plug 'Pocco81/auto-save.nvim' " Autosave

" Theme
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'Tsuzat/NeoSolarized.nvim', { 'branch': 'master' }

Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }

Plug 'ghifarit53/tokyonight-vim'

Plug 'morhetz/gruvbox'

Plug 'joshdick/onedark.vim'

Plug 'sainnhe/sonokai'

Plug 'sainnhe/edge'

Plug 'vim-airline/vim-airline'

Plug 'projekt0n/github-nvim-theme'

Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }

Plug 'xero/miasma.nvim'

Plug 'sts10/vim-pink-moon'

Plug 'gilgigilgil/anderson.vim'

Plug 'jacoborus/tender.vim'

Plug 'nordtheme/vim'

call plug#end()

lua require('kankys')


 " Nastavení klávesy Enter pro potvrzení výběru z vyskakovací nápovědy - nejde
 " s autoclose!
 inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" 

 " Autostart NERDTree
" autocmd VimEnter * call NERDTreeFocus() " Autostart NERDTreeFocus   

" Komentáře NERD Commenter klávesové zkratky Ctrl + k + l
let mapleader=","
nmap <C-k> <plug>NERDCommenterToggle
vmap <C-l> <plug>NERDCommenterToggle<CR>

" Atomaticky po startu theme
colorscheme nightfly
autocmd VimEnter * colorscheme nightfly

" Autosave
let g:auto_save_enabled = 1
let g:auto_save_delay = 3000
let g:auto_save_events = ['InsertLeave', 'TextChanged']

" keys pretier
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)



lua <<EOF

--AutocloseTag setup
require("autoclose").setup()

--Line
require('hlchunk').setup({
 indent = {
    chars = {
        "│",
    },
    style = {
        "#FF0000",
        "#FF7F00",
        "#FFFF00",
        "#00FF00",
        "#00FFFF",
        "#0000FF",
        "#8B00FF",
    },
}
    
})
EOF



