call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'andweeb/presence.nvim'

call plug#end()

syntax enable

set number
set relativenumber
set nowrap
set noshowmode
set autoindent
set smarttab
set expandtab
set smartindent
set cursorline

set encoding=utf-8
set tabstop=2
set shiftwidth=2
