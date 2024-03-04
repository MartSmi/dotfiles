let current_compiler = 'c++'
CompilerSet makeprg=g++\ -DEVAL\ -std=gnu++11\ -O2\ -pipe\ -static\ -s\ -o\ main\ %\ &&\ ./main
CompilerSet errorformat=%f:%l:%c:error:%m
nnoremap <leader>k :!g++ -DEVAL -std=gnu++11 -O2 -pipe -static -s -o main % && ./main <CR>
