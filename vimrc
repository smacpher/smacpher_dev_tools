let mapleader=','
"allows for constomization overrides must come after this setting
"set nocompatible

" quickly edit / reload the vimrc file
" maps ,ev to edit .vimrc
"nmap <silent> <leader>ev :e $MYVIMRC<CR>
" maps ,sv to reload .vimrc
"nmap <silent> <leader>sv :so $MYVIMRC<CR>

" hides buffers instead of closing them
" when you have unwritten changes to a file
" and opena  new file using :e
" I won't be forced to write / undo my changes first
" undo buffers and marks are preserved while the
" buffer is open
"set hidden

" don't wrap lines
set nowrap

" larger command search history
"set history=1000

" lots and lots of undos
"set undolevels=1000

" disable bells
set noerrorbells

" some older versions of Vim do not have the autocmd functions; so use wrapper
" set indent level for specific file types
if has('autocmd')
    filetype plugin indent on 
    "autocmd filetype python set expandtab
    " for crontab file types, don't set a backup file (causes issues)
    autocmd filetype crontab setlocal nobackup nowritebackup
endif

" fancy vim layout
func! FancyMode()
 
 " show line numbers
 setlocal number
 setlocal expandtab
 " set tab to 4 spaces
 setlocal tabstop=4
 setlocal softtabstop=4
 setlocal autoindent
 " number of spaces to use for autoindenting
 setlocal shiftwidth=4
 " ignore case when searching
 setlocal ignorecase
 " highlight search hits
 setlocal hlsearch
 " show search matches as you type; increment through them
 setlocal incsearch
 " set column at 80 characters.
 setlocal colorcolumn=80
 " show syntax coloring
 syntax on

endfu

func! UndoFancyMode()
 setlocal nonumber
 setlocal noexpandtab
 setlocal noautoindent
 setlocal noignorecase
 setlocal nohlsearch
 setlocal noincsearch
 setlocal colorcolumn=
 syntax off
endfu

com! Fancy call FancyMode()
com! NoFancy call UndoFancyMode()
