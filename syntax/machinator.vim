" syntax highlighting for machinator
"
" Heavily modified version of the machinator syntax
" highlighter to support machinator.
"
" author: raichoo (raichoo@googlemail.com)

if exists("b:current_syntax")
  finish
endif

syn match machinatorModule "machinator @ v[0-9]\+"
syn keyword machinatorStructure record data
syn match machinatorDelimiter  "[(),;[\]{}]"
syn match machinatorType "\<\([A-Z][a-zA-Z0-9_]*\|_|_\)\>"
syn match machinatorLineComment "---*\([^-!#$%&\*\+./<=>\?@\\^|~].*\)\?$"
syn region machinatorBlockComment start="{-" end="-}" contains=machinatorBlockComment

highlight def link machinatorModule Structure
highlight def link machinatorStructure Structure
highlight def link machinatorDelimiter Delimiter
highlight def link machinatorType Include
highlight def link machinatorLineComment Comment
highlight def link machinatorBlockComment Comment

let b:current_syntax = "machinator"
