autocmd bufnewfile *.go so ~/.vim/skeleton/go.skl
autocmd bufnewfile *.go exe "1," . 10 . "g/Created.*/s//Created            :   " .strftime("%c")
