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
map \[ :tabprevious<cr>
map \] :tabnext<cr>
map \' :tabnew<cr><C-f>
map \f <C-f>
map \|  :vnew <cr><C-f>
map <F8>  :vnew <cr><C-f>
map <F9>  :new <cr><C-f>
map <F10>  :wincmd f<cr><C-f>
inoremap <F8>  <C-o>:vnew<cr><C-f>
inoremap <F9> <C-o>:new<cr><C-f>
inoremap <F10>  <C-o>:tabnext<cr>
" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


map <C-_> gcc

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

"nnoremap <silent> <leader>z :Goyo<cr>

nnoremap <silent> <leader>d :GitGutterToggle<cr>

map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
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

" spell correction
nnoremap \s a<C-X><C-S>

" replace current text with that in buffer & yank it again (for repeat copy paste)
nnoremap \w viwpyiw
nnoremap \v :YRShow<CR>

nnoremap \c yaw


"put the current word in quote
noremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
noremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
noremap <leader>9 viw<esc>a)<esc>hbi(<esc>lel
noremap <leader>0 viw<esc>a)<esc>hbi(<esc>lel
noremap <leader>] viw<esc>a]<esc>hbi[<esc>lel
noremap <leader>[ viw<esc>a}<esc>hbi{<esc>lel

" Show a list of interfaces which is implemented by the type under your cursor
au FileType go nmap <leader>s <Plug>(go-implements)

" Show type info for the word under your cursor
au FileType go nmap <leader>i <Plug>(go-info)

au FileType go nmap \d <Plug>(go-def)
" Open the relevant Godoc for the word under the cursor
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)

" Open the Godoc in browser
au FileType go nmap <leader>gb <Plug>(go-doc-browser)

" Run/build/test/coverage
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

let g:switch_mapping = "-"

cmap w!! w !sudo tee > /dev/null %

nmap K <Plug>(devdocs-under-cursor)

autocmd FileType typescript nmap \r <C-^>

autocmd FileType typescript nmap <buffer> \t : <C-u>echo tsuquyomi#hint()<CR>

nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>

nmap <silent> \l <Plug>(jsdoc)
" nmap <Space> <Plug>(easymotion-bd-f)
nmap <Space> <Plug>(easymotion-sn)

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

map \<Space> :noh<CR>
