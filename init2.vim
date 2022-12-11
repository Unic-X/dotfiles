
set t_Co=256
set termguicolors

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'

Plug 'andweeb/presence.nvim'

Plug 'vim-airline/vim-airline'

Plug 'jiangmiao/auto-pairs'

Plug 'norcalli/nvim-colorizer.lua'

Plug 'dense-analysis/ale'

Plug 'andweeb/presence.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

call plug#end()


let g:presence_main_image = "file"

let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "समोसा खा रहा हूं"
let g:presence_client_id           = "793271441293967371"
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 1
let g:presence_file_assets         = {}
let g:presence_show_time           = 1

" Rich Presence text options
let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"


colorscheme gruvbox
