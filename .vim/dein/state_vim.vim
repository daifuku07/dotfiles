let [plugins, ftplugin] = dein#load_cache_raw(['/home/gpu/.vimrc'], 1)
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/gpu/.vim/dein'
let g:dein#_runtime_path = '/home/gpu/.vim/dein/.dein'
let &runtimepath = '/home/gpu/.vim/dein/repos/github.com/Shougo/vimproc,/home/gpu/.vim/dein/.dein,/home/gpu/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/gpu/.vim/after,/home/gpu/.vim/dein/repos/github.com/Shougo/dein.vim,/home/gpu/.vim/dein/.dein/after'
filetype off
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* Gist call dein#autoload#_on_cmd('Gist', 'gist-vim', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* GundoToggle call dein#autoload#_on_cmd('GundoToggle', 'gundo.vim', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! nnoremap <unique><silent> <Plug>(easymotion-sn) :call dein#autoload#_on_map('<lt>Plug>(easymotion-sn)', 'vim-easymotion','n')<CR>
silent! xnoremap <unique><silent> <Plug>(easymotion-sn) :call dein#autoload#_on_map('<lt>Plug>(easymotion-sn)', 'vim-easymotion','x')<CR>
silent! onoremap <unique><silent> <Plug>(easymotion-sn) :call dein#autoload#_on_map('<lt>Plug>(easymotion-sn)', 'vim-easymotion','o')<CR>
silent! nnoremap <unique><silent> <Plug>(easymotion-bd-W) :call dein#autoload#_on_map('<lt>Plug>(easymotion-bd-W)', 'vim-easymotion','n')<CR>
silent! xnoremap <unique><silent> <Plug>(easymotion-bd-W) :call dein#autoload#_on_map('<lt>Plug>(easymotion-bd-W)', 'vim-easymotion','x')<CR>
silent! onoremap <unique><silent> <Plug>(easymotion-bd-W) :call dein#autoload#_on_map('<lt>Plug>(easymotion-bd-W)', 'vim-easymotion','o')<CR>
silent! nnoremap <unique><silent> <Plug>(easymotion-bd-w) :call dein#autoload#_on_map('<lt>Plug>(easymotion-bd-w)', 'vim-easymotion','n')<CR>
silent! xnoremap <unique><silent> <Plug>(easymotion-bd-w) :call dein#autoload#_on_map('<lt>Plug>(easymotion-bd-w)', 'vim-easymotion','x')<CR>
silent! onoremap <unique><silent> <Plug>(easymotion-bd-w) :call dein#autoload#_on_map('<lt>Plug>(easymotion-bd-w)', 'vim-easymotion','o')<CR>
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* Ref call dein#autoload#_on_cmd('Ref', 'vim-ref', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* VCSVimDiff call dein#autoload#_on_cmd('VCSVimDiff', 'vcscommand.vim', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* NERDTreeToggle call dein#autoload#_on_cmd('NERDTreeToggle', 'nerdtree', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* Gitv call dein#autoload#_on_cmd('Gitv', 'gitv', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* BenchVimrc call dein#autoload#_on_cmd('BenchVimrc', 'benchvimrc-vim', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* Linediff call dein#autoload#_on_cmd('Linediff', 'linediff.vim', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* Unite call dein#autoload#_on_cmd('Unite', 'unite.vim', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* Alignta call dein#autoload#_on_cmd('Alignta', 'vim-alignta', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! nnoremap <unique><silent> <Plug>(openbrowser-smart-search) :call dein#autoload#_on_map('<lt>Plug>(openbrowser-smart-search)', 'open-browser.vim','n')<CR>
silent! xnoremap <unique><silent> <Plug>(openbrowser-smart-search) :call dein#autoload#_on_map('<lt>Plug>(openbrowser-smart-search)', 'open-browser.vim','x')<CR>
silent! onoremap <unique><silent> <Plug>(openbrowser-smart-search) :call dein#autoload#_on_map('<lt>Plug>(openbrowser-smart-search)', 'open-browser.vim','o')<CR>
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* OverCommandLine call dein#autoload#_on_cmd('OverCommandLine', 'vim-over', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* TagbarToggle call dein#autoload#_on_cmd('TagbarToggle', 'tagbar', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* TranslateGoogle call dein#autoload#_on_cmd('TranslateGoogle', 'translategoogle.vim', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* TranslateGoogleCmd call dein#autoload#_on_cmd('TranslateGoogleCmd', 'translategoogle.vim', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* SrcExplToggle call dein#autoload#_on_cmd('SrcExplToggle', 'SrcExpl', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* GrammarousCheck call dein#autoload#_on_cmd('GrammarousCheck', 'vim-grammarous', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
