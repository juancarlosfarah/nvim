set number 	" show line numbers
set noswapfile 	" disable the swapfile
set hlsearch 	" highlight all results
set ignorecase 	" ignore case in search
set incsearch 	" show search results as you type

" leader key mapping
nnoremap <Leader><Leader> :noh<cr>

" color scheme
" set termguicolors     " enable true colors (does not work on macos terminal)
syntax on 	" highlight syntax
let g:airline_theme='one'
let g:one_allow_italics = 1
set background=dark
colorscheme one

" autocomplete
let g:deoplete#enable_at_startup = 1
highlight Pmenu ctermbg=8 guibg=#606060
highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6

" snippets
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" nerdtree
nnoremap <Leader>f :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowHidden = 1

" ale
let g:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" vimtex
" call deoplete#custom#var('omni', 'input_patterns', {
"   \ 'tex': g:vimtex#re#deoplete
" \})

" if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
"    set fileencodings=ucs-bom,utf-8,latin1
" endif
" 
" set nocompatible        " Use Vim defaults (much better!)
" set bs=indent,eol,start " allow backspacing over everything in insert mode
" set ai                 " always set autoindenting on
" set backup             " keep a backup file
" set viminfo='20,\"50    " read/write a .viminfo file, don't store more
"                         " than 50 lines of registers
" set history=50          " keep 50 lines of command line history
" set ruler               " show the cursor position all the time
" set number              " show line numbers
" set cindent             " use C-style indenting
set tabstop=2           " set tab to 2 spaces
set shiftwidth=2        " set tab to 2 space
" set expandtab           " replace tab with spaces
" set laststatus=2        " Always show the status bar.
" set numberwidth=2       " By default set number column width to 4.
" set diffopt+=vertical   " Always use vertical diffs.
" set pastetoggle=<F3>    " Toggle paste mode
" 
" " Automatic indentation.
" set smartindent
" set autoindent
" 
" " Always have at least 5 lines at the bottom of the screen.
" set scrolloff=5
" 
" " Only do this part when compiled with support for autocommands
" if has("autocmd")
"     augroup redhat
"     autocmd!
"     " Set wrapping to 78 for text files
"     autocmd BufRead,BufNewFile *.txt setlocal tw=78 fo+=t
"     " Set wrapping to 78 for C, C++ and Header files
"     autocmd BufRead,BufNewFile *.cpp,*.hpp,*.c,*.h setlocal tw=72 fo+=t
"     " Automatically highlight characters in lines after the 78th or 70th column
"     autocmd BufEnter * highlight OverLength ctermfg=darkgrey
"     autocmd BufEnter * match OverLength /\%79v.*/
"     autocmd BufEnter *.cpp,*.c,*.h match OverLength /\%72v.*/
"     " When editing a file, always jump to the last cursor position
"     autocmd BufReadPost *
"     \ if line("'\"") > 0 && line ("'\"") <= line("$") |
"     \   exe "normal! g'\"" |
"     \ endif
"     " don't write swapfile on most commonly used directories for NFS mounts or USB sticks
"     autocmd BufNewFile,BufReadPre /media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp
"     " start with spec file template
"     autocmd BufNewFile *.spec 0r /usr/share/vim/vimfiles/template.spec
"     augroup END
" endif
" 
" if has("cscope") && filereadable("/usr/bin/cscope")
"     set csprg=/usr/bin/cscope
"     set csto=0
"     set cst
"     set nocsverb
"     " add any database in current directory
"     if filereadable("cscope.out")
"         cs add cscope.out
"     " else add database pointed to by environment
"     elseif $CSCOPE_DB != ""
"         cs add $CSCOPE_DB
"     endif
"     set csverb
" endif
" 
" " Switch syntax highlighting on, when the terminal has colors
" if &t_Co > 2 || has("gui_running")
"     syntax on
"     " Incremental searching, jump to pattern matched so far.
"     set incsearch
"     "Also switch on highlighting the last used search pattern.
"     set hlsearch
"     " Unhighlight after search using <Leader>n
"     nnoremap <silent> <Leader>n :noh<CR>
" endif
" 
" filetype plugin on
" 
" if &term=="xterm"
"     set t_Co=8
"     set t_Sb=^[[4%dm
"     set t_Sf=^[[3%dm
" endif
" 
" " Make it obvious where 80 characters is
" "set textwidth=80
" "set colorcolumn=+1
" 
" " Don't wake up system with blinking cursor:
" " http://www.linuxpowertop.org/known.php
" let &guicursor = &guicursor . ",a:blinkon0"
