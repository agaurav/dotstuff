"inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :bufdo bd<cr>

" Useful mappings for managing tabs
map <F9> :tabprevious<cr>
map <F8>  :tabnew<cr><C-f>
map <F10>  :tabnext<cr>
inoremap <F8>  <C-o>:tabnew<cr>
inoremap <F9> <C-o>:tabprevious<cr>
inoremap <F10>  <C-o>:tabnext<cr>
" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>
" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif


map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

map <leader>o :BufExplorer<cr>

map <leader>f :MRU<CR>


map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-Space> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-Space> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
"ino <F7> <c-r>=snipMate#TriggerSnippet()<cr>
"snor <F7> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>

map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

nnoremap <silent> <leader>z :Goyo<cr>

nnoremap <silent> <leader>d :GitGutterToggle<cr>

map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarOpenAutoClose<CR>
map <F4> :YRShow<CR>
map <F5> :VimShellPop<CR>
inoremap <F2> <C-o>:NERDTreeToggle<CR>
inoremap <F3> <C-o>:TagbarOpenAutoClose<CR>
inoremap <F4> <C-o>:YRShow<CR>
inoremap <F5> <C-o>:VimShellPop<CR>

map <leader>mn :MultipleCursorsFind

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-s>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

let g:vim_json_syntax_conceal = 0
let g:SuperTabDefaultCompletionType = "<CR>"



:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
