set nocompatible
filetype plugin indent on
execute pathogen#infect()

let mapleader=" "

" ---------------------------------------------------------------------
" Line numbering
set relativenumber
set number

" ---------------------------------------------------------------------
" Tabs
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
set smarttab

" ---------------------------------------------------------------------
" Text Wrapping
set wrap

" ---------------------------------------------------------------------
" Display above / below cursor lines
set scrolloff=10

" ---------------------------------------------------------------------
" Status var
set laststatus=2

" ---------------------------------------------------------------------
" Highlight brackets, % to switch between
set matchpairs+=<:>

" ---------------------------------------------------------------------
" Coloring
syntax on
colorscheme lucius
" murphy *torte archery jellybeans lightning *lucius materialbox gruvbox
" scheakur
nnoremap <Leader>c1 :colorscheme torte<cr>
nnoremap <Leader>c2 :colorscheme lucius<cr>
nnoremap <Leader>c3 :colorscheme archery<cr>
nnoremap <Leader>c4 :colorscheme seoul256<cr>
nnoremap <Leader>c5 :colorscheme jellybeans<cr>
nnoremap <Leader>c6 :colorscheme lightning<cr>
nnoremap <Leader>c7 :colorscheme scheakur<cr>
nnoremap <Leader>c8 :colorscheme materialbox<cr>
nnoremap <Leader>c9 :colorscheme murphy<cr>
nnoremap <Leader>c0 :colorscheme gruvbox<cr>

syntax enable

" ---------------------------------------------------------------------

" ---------------------------------------------------------------------
" Searching
set hlsearch
set incsearch
set showmatch

set autoindent

set showcmd

set cursorline

" ---------------------------------------------------------------------
" Filetype detection and specific indentation file loading
filetype indent on

" Nice autocomplete menu
set wildmenu

" Don't redraw until end of op's
set lazyredraw

" Move over lines visually
nnoremap j gj
nnoremap k gk

" jk is esc
inoremap jk <esc>


" See undo tree
nnoremap <leader>u :GundoToggle<CR>
" Save entire session
nnoremap <leader>s :mksession<CR>

" ---------------------------------------------------------------------
" Clear search highlighting
nnoremap <Leader><space> :noh<cr>

" ---------------------------------------------------------------------
nnoremap <Leader>ct :! pdflatex ./*.tex<CR>

" ---------------------------------------------------------------------
" Transparent background
let t:is_transparent = 0
function! Toggle_transparent()
	if t:is_transparent == 0
		hi Normal ctermbg=None
		let t:is_transparent = 1
	else
		set background=dark
		let t:is_transparent = 0
	endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>
