"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  处理一些可能不兼容的配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 处理Ack软件版本小于2.0的-s参数错误; 不过当前我已编译安装Ag-2.0.0
" let g:ack_default_options = " -H --nocolor --nogroup --column"