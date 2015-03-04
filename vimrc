" Joey Markowitz
" vim config pulling parts from http://amix.dk/vim/vimrc.html


"""""""""""""""""""
" VIM USER INTERFACE
"""""""""""""""""""
" Always show line number, but only in the current window
set number
:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber

" Always show current position
set ruler

" set height of the command bar
set cmdheight=1

" always show the status line
set laststatus=2

"""""""""""""""""""
" CODING
"""""""""""""""""""
set showmatch 						" Show matching brackets when text indicator is over them 
set mat=2						" how many 10ths of a second to blink when matching brackets	

set modeline						" Enable modeline -  allows custom settings per file by adding a config comment such as for a python source file -- # vim: tabstop=4 expandtab shiftwidth=4 softtabstop=4
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab						" all the new tab characters entered will be changed to spaces. This will not affect the existing tab characters

au BufWritePre *.py  :%s/\s\+$//e   " strip trailing spaces from python file

if &diff
	colorscheme ron
endif


if has("spell")
	set spelllang=en_us
	nnoremap <leader>sp :set spell!<CR>
endif

" Enable filetype language plugin settings.  check status by running the following to get a status :filetype
filetype plugin on
filetype plugin indent on

"""""""""""""""""""
" SEARCH
"""""""""""""""""""
" Hilight search results 
set hlsearch

" Incremental Search
set incsearch

"""""""""""""""""""
" PLUGINS 
"""""""""""""""""""
execute pathogen#infect()
filetype plugin indent on

" Enable Syntastic
let g:syntastic_python_python_exec = 'python2.7'
let g:syntastic_python_checkers = ['pylama', 'python']
let g:syntastic_warning_symbol = '!'
let g:syntastic_check_on_open = 1
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
			   \ "passive_filetypes": ["puppet"] }

" Enable Solarized color scheme
syntax enable						" Syntax highlighting	
"set background=dark
"colorscheme solarized


