"
" JetBrains Dark colorscheme for VIM.
"
" Color Set
" orange     #cf8e6d
" blue       #56a8f5
" purple     #c77dba
" green      #6aab73
" yellow     #8bb13a
" grey       #7a7e85
" white      #bcbec4
" background #1e1f22
" shade      #26282e
" highlight  #43454a

hi clear
syntax reset
let g:colors_name = "jetbrains_dark"
set t_Co=256
set background=dark

hi Normal guifg=#bcbec4 ctermbg=NONE guibg=#1e1f22 gui=NONE

hi DiffText guifg=#c77dba guibg=NONE
hi ErrorMsg guifg=#c77dba guibg=NONE
hi WarningMsg guifg=#c77dba guibg=NONE
hi PreProc guifg=#c77dba guibg=NONE
hi Exception guifg=#c77dba guibg=NONE
hi Error guifg=#c77dba guibg=NONE
hi DiffDelete guifg=#c77dba guibg=NONE
hi GitGutterDelete guifg=#c77dba guibg=NONE
hi GitGutterChangeDelete guifg=#c77dba guibg=NONE
hi cssIdentifier guifg=#c77dba guibg=NONE
hi cssImportant guifg=#c77dba guibg=NONE
hi Type guifg=#c77dba guibg=NONE
hi Identifier guifg=#c77dba guibg=NONE
hi PMenuSel guifg=#cf8e6d guibg=NONE
hi Constant guifg=#cf8e6d guibg=NONE
hi Repeat guifg=#cf8e6d guibg=NONE
hi DiffAdd guifg=#cf8e6d guibg=NONE
hi GitGutterAdd guifg=#cf8e6d guibg=NONE
hi cssIncludeKeyword guifg=#cf8e6d guibg=NONE
hi Keyword guifg=#cf8e6d guibg=NONE
hi IncSearch guifg=#6aab73 guibg=NONE
hi Title guifg=#6aab73 guibg=NONE
hi PreCondit guifg=#6aab73 guibg=NONE
hi Debug guifg=#6aab73 guibg=NONE
hi SpecialChar guifg=#6aab73 guibg=NONE
hi Conditional guifg=#6aab73 guibg=NONE
hi Todo guifg=#8bb13a guibg=NONE
hi Special guifg=#cf8e6d guibg=NONE
hi Label guifg=#6aab73 guibg=NONE
hi Delimiter guifg=#6aab73 guibg=NONE
hi Number guifg=#6aab73 guibg=NONE
hi CursorLineNR cterm=NONE guifg=#bcbec4 guibg=#26282e
hi Define guifg=#6aab73 guibg=NONE
hi MoreMsg guifg=#6aab73 guibg=NONE
hi Tag guifg=#6aab73 guibg=NONE
hi String guifg=#6aab73 guibg=NONE
hi MatchParen guifg=NONE guibg=#43454a
hi Macro guifg=#6aab73 guibg=NONE
hi DiffChange guifg=#6aab73 guibg=NONE
hi GitGutterChange guifg=#6aab73 guibg=NONE
hi cssColor guifg=#6aab73 guibg=NONE
hi Function guifg=#56a8f5 guibg=NONE
hi Directory guifg=#cf8e6d guibg=NONE
hi markdownLinkText guifg=#cf8e6d guibg=NONE
hi javaScriptBoolean guifg=#cf8e6d guibg=NONE
hi Include guifg=#cf8e6d guibg=NONE
hi Storage guifg=#cf8e6d guibg=NONE
hi cssClassName guifg=#cf8e6d guibg=NONE
hi cssClassNameDot guifg=#cf8e6d guibg=NONE
hi Statement guifg=#cf8e6d guibg=NONE
hi Operator guifg=#bcbec4 guibg=NONE
hi cssAttr guifg=#bcbec4 guibg=NONE
hi Pmenu guifg=#bcbec4 guibg=#454545
hi SignColumn guibg=#1e1f22
hi Title guifg=#bcbec4
hi LineNr guifg=#545760 guibg=#1e1f22
hi NonText guifg=#7a7e85 guibg=#1e1f22
hi Comment guifg=#7a7e85 gui=italic
hi SpecialComment guifg=#7a7e85 gui=italic guibg=NONE
hi CursorLine cterm=NONE guibg=#26282e
hi TabLineFill gui=NONE guibg=#454545
hi TabLine guifg=#545760 guibg=#454545 gui=NONE
hi StatusLine gui=bold guibg=#454545 guifg=#bcbec4
hi StatusLineNC gui=NONE guibg=#1e1f22 guifg=#bcbec4
hi Search guibg=#7a7e85 guifg=#bcbec4
hi VertSplit gui=NONE guifg=#454545 guibg=NONE
hi Visual gui=NONE guifg=NONE guibg=#454545
