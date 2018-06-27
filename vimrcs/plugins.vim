""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 安装的插件相关配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ctrlp 插件配置
set runtimepath^=~/wbsmm-vimrc/plugins/non_forked/ctrlp.vim



" ack.vim插件配置
" 如果存在ag则使用ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" 处理Ack软件版本小于2.0的-s参数错误; 不过当前我已编译安装Ag-2.0.0
" let g:ack_default_options = " -H --nocolor --nogroup --column"



" majutsushi/tagbar插件配置
nmap <F9> :TagbarToggle<CR>


" lightline插件配置
" 只是把原本filename只显示文件名 换成relativepath(相对路径)
" 添加依赖于sygnify插件的状态栏
"let g:lightline = {
"      \ 'colorscheme': 'powerline',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'readonly', 'relativepath', 'modified', 'vcsstatus' ] ]
"      \ },
"      \ 'component_function':{
"      \   'vcsstatus': 'My_sy_stats_wrapper'
"      \   }
"      \ }
"
"function! My_sy_stats_wrapper()
"      let symbols = ['+', '-', '~']
"      let [added, modified, removed] = sy#repo#get_stats()
"      let stats = [added, removed, modified]  " reorder
"      let hunkline = ''
"
"      for i in range(3)
"        if stats[i] > 0
"          let hunkline .= printf('%s%s ', symbols[i], stats[i])
"        endif
"      endfor
"
"      if !empty(hunkline)
"        let hunkline = printf('[%s]', hunkline[:-2])
"      endif
"
"      return hunkline
"endfunction


" airline 插件配置
let g:airline_theme = 'powerlineish'
" 手动指定需要交互的插件  
" 一发现tagbar 会导致打开大PHP文件时卡顿..../(ㄒoㄒ)/~~  在官方readme.md的Performance有提到这点.
" 另外tabline有bug tab页栏总是1 https://github.com/vim-airline/vim-airline/issues/1360 这里将其关闭
let g:airline_extensions = ['ale', 'ctrlp', 'fugitiveline', 'hunks', 'branch']

" lightline 插件只使用tabline功能
let g:lightline = {
        \ 'enable':{
        \   'statusline': 0,
        \   'tabline': 1
        \ },            
        \ 'colorscheme': 'powerline',
        \ }


" vim-signify 插件配置

" 我只接触过这两个VCS工具
let g:signify_vcs_list = [ 'git', 'svn' ]



" 既然不能像IDE那样实时保存  就不要任何自动保存功能
" 插入 正常模式 两次按键间自动更新标记(会写到磁盘)
"let g:signify_cursorhold_insert     = 1
"let g:signify_cursorhold_normal     = 1
" buffer修改时
"let g:signify_update_on_bufenter    = 0
" 获取焦点时 tmux里面的话还需要额外配置
"let g:signify_update_on_focusgained = 1


" 可视模式下快速选择
omap ic <plug>(signify-motion-inner-pending)
xmap ic <plug>(signify-motion-inner-visual)
" 相比于ic会忽略空行 但是似乎有bug 我随便用文件测试git时会卡死
"omap ac <plug>(signify-motion-outer-pending)
"xmap ac <plug>(signify-motion-outer-visual)



