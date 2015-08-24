"
" Name:       islenauts.vim
" URL:        https://github.com/MakeNowJust/islenauts.vim
" License:    MIT <https://makenowjust.github.com/license/mit?2015>
" Repository: https://github.com/MakeNowJust/islenauts.vim
"
"         _
" o      | |
"     ,  | |  _   _  _    __,        _|_  ,
" |  / \_|/  |/  / |/ |  /  |  |   |  |  / \_
" |_/ \/ |__/|__/  |  |_/\_/|_/ \_/|_/|_/ \/
"

" save cpoptions {{{
let s:save_cpo = &cpo
set cpo&vim
" }}}

" colorscheme's name {{{
" if you copied, renamed and edited this color scheme,
" it would set color scheme's name remotely.
let g:colors_name = expand('<sfile>:t:r')
" }}}

" basic configurations {{{
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
" }}}

" color variables {{{
function! s:rgb_to_256(color)
  let l:r = str2nr(a:color[1:2], 16) * 6 / 256
  let l:g = str2nr(a:color[3:4], 16) * 6 / 256
  let l:b = str2nr(a:color[5:6], 16) * 6 / 256

  return l:r * 36 + l:g * 6 + l:b + 16
endfunction

let s:black    = "#162324"
let s:white    = "#EDF2F2"
let s:gray1    = "#B5C9C9"
let s:gray2    = "#839191"
let s:gray3    = "#565959"
let s:gray4    = "#262727"
let s:red      = "#F04341"
let s:green    = "#A4FA87"
let s:yellow   = "#F0E09E"
let s:magenta  = "#F06EE2"
let s:blue     = "#7377FA"
let s:cyan     = "#74E3DA"

let s:black_256   = s:rgb_to_256(s:black)
let s:white_256   = s:rgb_to_256(s:white)
let s:gray1_256   = s:rgb_to_256(s:gray1)
let s:gray2_256   = s:rgb_to_256(s:gray2)
let s:gray3_256   = 240
let s:gray4_256   = 235
let s:red_256     = s:rgb_to_256(s:red)
let s:green_256   = s:rgb_to_256(s:green)
let s:yellow_256  = s:rgb_to_256(s:yellow)
let s:magenta_256 = s:rgb_to_256(s:magenta)
let s:blue_256    = s:rgb_to_256(s:blue)
let s:cyan_256    = s:rgb_to_256(s:cyan)

let s:signbg = ' ctermbg=' . s:gray4_256 . ' guibg=' . s:gray4
" }}}

" highlights in text area {{{
exe 'hi! Normal       ctermfg=' . s:white_256   . ' guifg=' . s:white    . ' ctermbg=' . s:gray3_256    . ' guibg=' . s:gray3
exe 'hi! Comment      ctermfg=' . s:gray2_256   . ' guifg=' . s:gray2
exe 'hi! Constant     ctermfg=' . s:yellow_256  . ' guifg=' . s:yellow
exe 'hi! Number       ctermfg=' . s:cyan_256    . ' guifg=' . s:cyan
exe 'hi! Boolean      ctermfg=' . s:cyan_256    . ' guifg=' . s:cyan
exe 'hi! Identifier   ctermfg=' . s:blue_256    . ' guifg=' . s:blue
exe 'hi! Statement    ctermfg=' . s:green_256   . ' guifg=' . s:green    . ' cterm=none gui=none'
exe 'hi! Operator     ctermfg=' . s:green_256   . ' guifg=' . s:green
exe 'hi! PreProc      ctermfg=' . s:gray2_256   . ' guifg=' . s:gray2
exe 'hi! Include      ctermfg=' . s:green_256   . ' guifg=' . s:green
exe 'hi! Type         ctermfg=' . s:green_256   . ' guifg=' . s:green
exe 'hi! Special      ctermfg=' . s:magenta_256 . ' guifg=' . s:magenta
exe 'hi! Delimiter    ctermfg=' . s:green_256   . ' guifg=' . s:green
exe 'hi! Underlined   ctermfg=' . s:magenta_256 . ' guifg=' . s:magenta  . ' cterm=none gui=none'
exe 'hi! Ignore       ctermfg=' . s:gray3_256   . ' guifg=' . s:gray3    . ' ctermbg=' . s:yellow_256  . ' guibg=' . s:yellow
exe 'hi! Todo         ctermfg=' . s:gray3_256   . ' guifg=' . s:gray3    . ' ctermbg=' . s:green_256   . ' guibg=' . s:green
exe 'hi! Error        ctermfg=' . s:gray3_256   . ' guifg=' . s:gray3    . ' ctermbg=' . s:red_256     . ' guibg=' . s:red
" }}}
" highlights in outer of text area {{{
exe 'hi! Cursor       '                                                  . ' ctermbg=' . s:gray1_256   . ' guibg=' . s:gray1
exe 'hi! LineNr       ctermfg=' . s:gray3_256   . ' guifg=' . s:gray3    . ' ctermbg=' . s:gray4_256   . ' guibg=' . s:gray4
exe 'hi! CursorLineNr ctermfg=' . s:magenta_256 . ' guifg=' . s:magenta  . ' ctermbg=' . s:black_256   . ' guibg=' . s:black
exe 'hi! CursorLine   '                                                  . ' ctermbg=' . s:gray4_256   . ' guibg=' . s:gray4 . ' cterm=none gui=none'
exe 'hi! CursorColumn '                                                  . ' ctermbg=' . s:gray4_256   . ' guibg=' . s:gray4 . ' cterm=none gui=none'
exe 'hi! ColorColumn  '                                                  . ' ctermbg=' . s:gray1_256   . ' guibg=' . s:gray1
exe 'hi! IncSearch    '                                                  . ' ctermbg=' . s:gray1_256   . ' guibg=' . s:gray1
exe 'hi! Visual       '                                                  . ' ctermbg=' . s:gray1_256   . ' guibg=' . s:gray1
exe 'hi! NonText      ctermfg=' . s:gray2_256   . ' guifg=' . s:gray2    . ' ctermbg=' . s:gray3_256   . ' guibg=' . s:gray3
exe 'hi! Folded       ctermfg=' . s:white_256   . ' guifg=' . s:white    . ' ctermbg=' . s:gray2_256   . ' guibg=' . s:gray2
exe 'hi! FoldColumn   ctermfg=' . s:green_256   . ' guifg=' . s:green    . ' ctermbg=' . s:gray4_256   . ' guibg=' . s:gray4 . ' cterm=bold gui=bold'
exe 'hi! SignColumn   '                                                  . s:signbg
exe 'hi! Search       '                                                  . ' ctermbg=' . s:gray2_256   . ' guibg=' . s:gray2
" }}}

" highlights for VimL {{{
hi default link vimOper Operator
hi default link vimOption Identifier
hi default link vimIsCommand Identifier
hi default link vimHiGroup Identifier
hi default link vimGroup Identifier
" }}}
" highlights for Markdown {{{
exe 'hi markdownItalic     ctermfg=' . s:blue_256    . ' guifg=' . s:blue    . ' cterm=bold gui=bold'
exe 'hi markdownBold       ctermfg=' . s:green_256   . ' guifg=' . s:green   . ' cterm=bold gui=bold'
exe 'hi markdownBoldItalic ctermfg=' . s:green_256   . ' guifg=' . s:green   . ' cterm=bold gui=bold'
exe 'hi markdownH1         ctermfg=' . s:green_256   . ' guifg=' . s:green   . ' cterm=bold gui=bold'
exe 'hi markdownH2         ctermfg=' . s:green_256   . ' guifg=' . s:green
hi default link markdownCodeDelimiter Comment
hi default link markdownCode Comment
hi default link markdownCodeBlock Comment
hi default link markdownLinkDelimiter Comment
hi default link markdownLinkTextDelimiter Comment
hi default link markdownUrlDelimiter Comment
hi default link markdownHeadingDelimiter Comment
hi default link markdownHeadingRule Comment
hi default link markdownH3 markdownH2
hi default link markdownH4 markdownH2
hi default link markdownH5 markdownH2
hi default link markdownH6 markdownH2
" }}}
" highlights for JavaScript {{{
hi default link javascriptNumber Number
hi default link javascriptFunction Statement
" }}}

" highlights for GitGutter {{{
exe 'hi! GitGutterAdd    ctermfg=' . s:blue_256   . 'guifg=' . s:blue   . s:signbg . ' cterm=bold gui=bold'
exe 'hi! GitGutterChange ctermfg=' . s:yellow_256 . 'guifg=' . s:yellow . s:signbg . ' cterm=bold gui=bold'
exe 'hi! GitGutterDelete ctermfg=' . s:red_256    . 'guifg=' . s:red    . s:signbg . ' cterm=bold gui=bold'
hi link GitGutterChangeDelete GitGutterChange
" }}}

" restore cpoptions {{{
let &cpo = s:save_cpo
" }}}

" vim: fdm=marker fdc=2 fdl=0
