" Perl highlighting and folding for class feature keywords
" Maintainer:   kfly8 <kfly@cpan.org>
" Installation: Put into after/syntax/perl/class.vim
" License: Vim License (see :help license)

" Class declarations
syn match perlClassDecl "\<class\s\+\%(\h\|::\)\%(\w\|::\)*" contains=perlStatementClass
syn keyword perlStatementClass  class contained
hi def link perlStatementClass  perlStatementInclude
hi def link perlClassDecl   perlType

" Field declarations
syn match perlFieldDecl '\<field\>\s\+[\$@%][a-zA-Z_][a-zA-Z0-9_]*' contains=perlStatementField,perlVariable
syn keyword perlStatementField field
hi def link perlStatementField  perlStatementStorage
hi def link perlFieldDecl   perlType

" Field attributes
syn match perlFieldAttr '\<\%(:param\|:reader\|:writer\)\>'
hi def link perlFieldAttr   perlStatementInclude

" Method
syn match perlFunction "\<method\>\_s*" nextgroup=perlSubDeclaration

