autocmd bufnewfile *.go so ~/.vim/skeleton/go.skl
autocmd bufnewfile *.go exe "1," . 10 . "g/Created.*/s//Created            :   " .strftime("%c")
autocmd bufnewfile Makefile so ~/.vim/skeleton/make.skl
autocmd bufnewfile Makefile exe "1," . 10 . "g/Created.*/s//Created            :   " .strftime("%c")
autocmd bufnewfile *.js so ~/.vim/skeleton/js.skl
autocmd bufnewfile *.js exe "1," . 10 . "g/Created.*/s//Created            :   " .strftime("%c")
