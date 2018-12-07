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
colorscheme murphy
"colorscheme torte

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

let mapleader=","

" See undo tree
nnoremap <leader>u :GundoToggle<CR>
" Save entire session
nnoremap <leader>s :mksession<CR>

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
