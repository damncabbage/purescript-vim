au BufNewFile,BufRead *.mcn setf machinator
au FileType machinator let &l:commentstring='{--%s--}'
