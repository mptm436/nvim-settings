" let g:asyncrun_exit " script will be executed after finished
" let g:asyncrun_mode " 0:async(require vim 7.4.1829) 1:sync 2:shell
" let g:asyncrun_bell " non-zero to ring a bell after finished
let g:asyncrun_open = 6 " above zero to open quickfix window at given height after command starts
" let g:asyncrun_wrapper = '-raw python %' " enable to setup a command prefix
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.hg', '.project'] " root markers which is used for locating project root
" let g:asyncrun_encs " set shell encoding if it's different from &encoding
" let g:asyncrun_trim " non-zero to trim the empty lines in the quickfix window.
" let g:asyncrun_auto " event name to trigger QuickFixCmdPre/QuickFixCmdPost
" let g:asyncrun_save " non-zero to save current(1) or all(2) modified buffer(s) before executing
" let g:asyncrun_timer " how many messages should be inserted into quickfix every 100ms interval
" let g:asyncrun_local " enable use local value of errorformat
" let g:asyncrun_shell " override the value of vim's shell option.
" let g:asyncrun_shellflag " override the value of vim's shellcmdflag option.
let g:asyncrun_status = "stopped"
augroup QuickfixStatus
	au! BufWinEnter quickfix setlocal 
		\ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
augroup END
