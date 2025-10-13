; Keywords
"def" @keyword.function
"if" @keyword.conditional
"else" @keyword.conditional

; Function definitions
(function_definition
  "def" @keyword.function
  (identifier) @function)

; Function signatures
(function_signature
  "(" @punctuation.bracket
  "->" @operator
  ")" @punctuation.bracket)

; Types
(type (identifier) @type)

; Operators
(operator) @operator

; Literals
(string_literal) @string
(string_content) @string
(escape_sequence) @string.escape
(number_literal) @number

; Identifiers
(identifier) @variable

; Comments
(comment) @comment

; Punctuation
"{" @punctuation.bracket
"}" @punctuation.bracket
"(" @punctuation.bracket
")" @punctuation.bracket

; ; Special operators (stack operations)
; ((identifier) @keyword.builtin
;  (#match? @keyword.builtin "^(dup|drop|swap|over|rot)$"))

; ; Logical operators
; ((identifier) @keyword.builtin
;  (#match? @keyword.builtin "^(and|or|not)$"))

; Built-in functions/operators get special highlighting
((identifier) @function.builtin
 (#match? @function.builtin "^(print|println|dup|drop|swap|over|rot|and|or|not)$"))
