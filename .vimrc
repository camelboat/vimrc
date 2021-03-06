set nocompatible
filetype off
"----------------------------------------------
"-Vundle
"-set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"-alternatively, pass a path where Vundle should install plugins
"-call vundle#begin('~/some/path/here')
"-let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"----------------------------------------------
"-YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf=0
"----------------------------------------------
Plugin 'tpope/vim-fugitive'
"----------------------------------------------
"Plugin 'git://git.wincent.com/command-t.git'
"----------------------------------------------
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"----------------------------------------------
"-vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=1
"let g:airline_theme='luna'
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"----------------------------------------------
"-Markdown Plugin
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
Plugin 'suan/vim-instant-markdown'
"----------------------------------------------
filetype plugin indent on    " required
"-To ignore plugin indent changes, instead use:
"-filetype plugin on
"-Brief help
"- :PluginList       - lists configured plugins
"- :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"- :PluginSearch foo - searches for foo; append `!` to refresh local cache
"- :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"----------------------------------------------
Bundle 'Auto-Pairs'
"----------------------------------------------
Bundle 'code_complete'
"----------------------------------------------
Bundle 'taglist.vim'
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1
let Tlist_WinWidt=28
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Left_Windo=1
"----------------------------------------------
Bundle 'majutsushi/tagbar'
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=30
map <F3> : Tagbar<CR>
"----------------------------------------------
"-Normal Setup
syntax on
set tabstop=4
set shiftwidth=4
set nu
set ruler
"-Use mouse to select words
set mouse=a
"-Replace Tab with Space
set ts=4
set expandtab
%retab!
set showcmd
let python_highlight_all = 1
au BufNewFile,BufRead *.cu set ft=cuda
au BUfNewFIle,BufRead *.cuh set ft=cuda
"----------------------------------------------
call vundle#end()            " required
