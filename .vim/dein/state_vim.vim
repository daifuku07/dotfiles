let [plugins, ftplugin] = dein#load_cache_raw(['/home/gpu/.vimrc'], 1)
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/gpu/.vim/dein'
let g:dein#_runtime_path = '/home/gpu/.vim/dein/.dein'
let &runtimepath = '/home/gpu/.vim/dein/repos/github.com/Shougo/vimproc.vim,/home/gpu/.vim/dein/.dein,/home/gpu/.vim/dein/repos/github.com/Shougo/dein.vim,/home/gpu/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/gpu/.vim/after,/home/gpu/.vim/dein/.dein/after'
filetype off
