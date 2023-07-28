
syn match witIdent              "\<[a-z][a-zA-Z0-9-]*"

" Keyword definitions.
syn keyword witPackage          package
syn keyword witInterface        interface
syn keyword witType             type flags record enum
syn keyword witPrim             u8 u16 u32 u64 string option list result func tuple

" Comments
syn match   witLineComment      "//.*"
syn region  witBlockComment     start="/\*"  end="\*/" contains=witBlockComment

syn sync lines=100

if !exists("did_wit_syntax_inits")
  let did_wit_syntax_inits = 1

  hi link witPackage                      Keyword
  hi link witInterface                    Keyword
  hi link witType                         Type
  hi link witPrim                         Type

  hi link witBlockComment                 witComment
  hi link witLineComment                  witComment
  hi link witComment                      Comment
endif

let b:current_syntax = "wit"
