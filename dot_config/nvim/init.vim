autocmd bufnewfile *.py so ~/.vim/autoload/py_header.txt

map <leader>re :execute "edit " . $MYVIMRC<CR>
map <leader>rs :execute "source " . $MYVIMRC<CR>
