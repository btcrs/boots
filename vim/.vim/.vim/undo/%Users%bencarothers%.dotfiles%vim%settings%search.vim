Vim�UnDo� �P���8L�̻�ڀ�vģP�����/���$�   $                 $       $   $   $    Un?�    _�                     *        ����                                                                                                                                                                                                                                                                                                                                                             Un<�     �   *            5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             Un<�    �   *   ,   :    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?     �                 function! GetVisual()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Un?     �                   let reg_save = getreg('"')5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Un?     �                 $  let regtype_save = getregtype('"')5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Un?     �                   let cb_save = &clipboard5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Un?     �                   set clipboard&5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             Un?     �                   normal! ""gvy5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             Un?     �                   let selection = getreg('"')5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             Un?     �                 *  call setreg('"', reg_save, regtype_save)5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             Un?     �                   let &clipboard = cb_save5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Un?     �                   return selection5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?     �                 endfunction5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?     �                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Un?t     �                <"grep current word up to the next exclamation point using ,K5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?u     �                6nnoremap ,K viwf!:<C-U>execute "Ag " . GetVisual()<CR>5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?v     �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?{     �                "grep for 'def foo'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?{     �                +nnoremap <silent> ,gd :Ag 'def <cword>'<CR>5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?|     �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?�     �                +",gg = Grep! - using Ag the silver searcher5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?�     �                :" open up a grep line, with a quote started for the search5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?�     �                nnoremap ,gg :Ag ""<left>5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?�     �                 5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                             Un?�     �                $"Grep for usages of the current file5�_�      "          !           ����                                                                                                                                                                                                                                                                                                                                                             Un?�     �                ?set incsearch       " Find the next match as we type the search   3set hlsearch        " Highlight searches by default   3set ignorecase      " Ignore case when searching...   1set smartcase       " ...unless we type a capital    5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                             Un?�     �                 "�              5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                             Un?�     �              5�_�   #               $           ����                                                                                                                                                                                                                                                                                                                                                             Un?�    �                  5�_�             !              ����                                                                                                                                                                                                                                                                                                                                                             Un?�     �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?�     �                 "5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             Un?�     �          !      ""5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             Un?�     �          !       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Un?�     �                ?set incsearch       " Find the next match as we type the search   3set hlsearch        " Highlight searches by default   3set ignorecase      " Ignore case when searching...   1set smartcase       " ...unless we type a capital5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             Un?)     �         /      nnore5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Un?%     �         /      nnore5��