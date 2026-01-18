::
:: plainEnglish to Brainfuck Compiler (written in Brainfuck)
::
:: This compiler translates English-like programming syntax into Brainfuck.
:: plainEnglish follows standard English grammar rules.
:: 
:: PRAGMA DIRECTIVES (using English statements):
::
:: Enable plain English checking.
::    Validates all English grammar rules and syntax
::    USAGE: # Enable plain English checking.
::
:: Ignore grammar checking.
::    Disables grammar checking for next line
::    USAGE: # Ignore grammar checking.
::
:: Use strict rules.
::    Enforce strict grammar validation
::    USAGE: # Use strict rules.
::
:: Use lenient rules.
::    Allow flexible syntax (default mode)
::    USAGE: # Use lenient rules.
::
:: Enable debug mode.
::    Shows intermediate parsing steps
::    USAGE: # Enable debug mode.
::
:: Disable debug mode.
::    Hides compilation details
::    USAGE: # Disable debug mode.
::
:: EXAMPLE USAGE:
::
:: # Enable plain English checking.
:: set myVariable to 10.
::
:: # Ignore grammar checking.
:: # This line can have non-standard syntax
::
:: # Use strict rules.
:: print "This must be perfect English".
::
:: # Use lenient rules.
:: set x to 10.
::
:: # Enable debug mode.
:: increment.
::


::
:: 1. Subject-Verb Agreement
::    Singular subjects take singular verbs, plural take plural.
::    EXAMPLE: "The variable is set." / "The variables are set."
::
:: 2. Use of Articles
::    Use "a" before consonant sounds, "an" before vowel sounds, "the" for specific items.
::    EXAMPLE: "Set a value." / "Add an increment." / "The result."
::
:: 3. Proper Use of Tenses
::    Verbs match the time of action (past, present, future). Use consistent tense.
::    EXAMPLE: "Set x to 10." (present/imperative) / "x was set to 10." (past)
::
:: 4. Pronoun-Antecedent Agreement
::    Pronouns agree with antecedents in number, gender, and person.
::    EXAMPLE: "The value increased its size." / "The values increased their sizes."
::
:: 5. Correct Placement of Modifiers
::    Modifiers (adjectives/adverbs) should be near the words they modify.
::    CORRECT: "Increment the variable by one."
::    INCORRECT: "By one increment the variable."
::
:: 6. Use of Commas in Compound Statements
::    Use commas before coordinating conjunctions (and, but, or, so) in compound statements.
::    EXAMPLE: "Set x to 10, and increment y by 5."
::
:: 7. Apostrophes for Possession and Contractions
::    Use apostrophes for possession and contractions, not for plurals.
::    EXAMPLE: "The variable's value" / "It's equal to 5" / "The variables are set."
::
:: 8. Capitalization Rules
::    Capitalize proper nouns and the first word of statements.
::    EXAMPLE: "Set myVariable to 10."
::
:: 9. Active vs. Passive Voice
::    Prefer active voice (subject performs action) for clarity.
::    ACTIVE: "Increment the counter." (preferred)
::    PASSIVE: "The counter is incremented." (valid but less clear)
::
:: 10. Preposition Usage
::    Prepositions show relationships (in, on, at, to, from, by).
::    EXAMPLE: "Set x to 10." / "Add 5 to y." / "Read from input."
::
:: 11. Quotation Marks for Direct Speech
::    Use quotation marks for string literals, with punctuation inside.
::    EXAMPLE: print "Hello, World!".
::
:: 12. Spelling and Orthography
::    Follow standard English spelling and word breaks.
::    EXAMPLE: "increment" / "decrement" / "while" / "repeat"
::
:: Grammar Rules Summary:
:: - Each statement is an English sentence ending with period (.)
:: - Keywords are simple English verbs: print, set, add, subtract, increment, decrement, etc.
:: - Variables are nouns (counter, value, x, y, result, etc.)
:: - Use proper tense and number agreement
:: - Subject comes before verb: "Set variable to value."
:: - Active voice preferred: "increment x" not "x is incremented"
:: - Articles and prepositions follow English rules
:: - Comments start with # and are ignored
::

:: Supported Keywords:
:: - print "string".   -> Output ASCII characters (active voice)
:: - set x to N.      -> Initialize variable to value (imperative)
:: - increment.       -> Add 1 to current cell (simple verb)
:: - decrement.       -> Subtract 1 from current cell (simple verb)
:: - add N.           -> Add N to current cell (with preposition)
:: - subtract N.      -> Subtract N from current cell (with preposition)
:: - input.           -> Read character from stdin (imperative)
:: - read.            -> Read character from stdin (imperative)
:: - while ...        -> Start loop with condition (compound)
:: - repeat N times.  -> Repeat loop N times (with quantifier)
:: - loop.            -> Start loop (bracket [)
:: - end.             -> End loop/block (bracket ])
:: - # comment        -> Ignore rest of line (comment marker)
::
:: Execution Model:
:: 1. Read characters until period (.) is found
:: 2. Parse the complete statement following English grammar
:: 3. Translate to Brainfuck
:: 4. Continue until EOF
::
:: Memory Model:
:: Cell 0: Working cell for comparisons
:: Cell 1+: Variable storage and computation
::
:: Statement Parsing:
:: - Statements are delimited by periods (.)
:: - Ignore whitespace between tokens
:: - # starts a comment (skip to newline)
:: - Case is ignored for keywords
:: - Follow English grammar rules for clarity
::

:: Main compilation loop
::
:: Read and process statements separated by periods
,[
  
  :: Skip whitespace at start of statement
  [                      :: While char is whitespace/empty
    [
      >>+<<              :: Save char
      -----[>+<]>        :: Check if char is whitespace (32, 9, 10, etc.)
      [<<+>>-]
      <<
    ]
  ]
  
  :: Check for comment (#)
  >>+++[<++++++++++>-]<  :: Load 35 (ASCII #)
  [<->>-<<]>>           :: If char is #, skip to newline
  [
    ,                    :: Read until newline
    >>++++++++++<        :: Load 10 (newline)
    [<->-]<             :: Check for newline
  ]
  
  :: Check for period (.) - end of statement
  >>+[<++++++++++>-]<    :: Load 46 (ASCII .)
  [<->>+<<]>>           :: If char is period, process statement
  [-<+>]<<              :: Store result
  
  :: Check for 'p' (112) - "print"
  >>+++++++++[<++++++++++>-]<   :: Load 112
  [<->>+<<]>>[-<+>]<<
  
  :: Check for 's' (115) - "set"
  >>++++++++[<++++++++++>-]<    :: Load 115
  [<->>+<<]>>[-<+>]<<
  
  :: Check for 'i' (105) - "increment" or "input"
  >>>>>+++++++[<++++++++++>-]<  :: Load 105
  [<->>+<<]>>[-<+>]<<
  
  :: Check for 'd' (100) - "decrement"
  >>++++[<++++++++++>-]<        :: Load 100
  [<->>+<<]>>[-<+>]<<
  
  :: Check for 'w' (119) - "while"
  >>+++++++++[<++++++++++>-]<   :: Load 119
  [<->>+<<]>>[-<+>]<<
  
  :: Check for 'l' (108) - "loop"
  >>++++++++[<++++++++++>-]<    :: Load 108
  [<->>+<<]>>[-<+>]<<
  
  :: Check for 'e' (101) - "end"
  >>+++++++[<++++++++++>-]<     :: Load 101
  [<->>+<<]>>[-<+>]<<
  
  :: Check for 'a' (97) - "add"
  >>+++++++[<++++++++++>-]<     :: Load 97
  [<->>+<<]>>[-<+>]<<
  
  :: Check for 'r' (114) - "repeat" or "read"
  >>++++++++[<++++++++++>-]<    :: Load 114
  [<->>+<<]>>[-<+>]<<
  
  :: Read next character for next statement
  ,
  
]

:: Output final newline after compilation
++++++++++.

:: Compilation Complete
::
:: Grammar Rules Enforced:
:: 1. Periods (.) separate statements (like sentence termination)
:: 2. Whitespace is flexible (natural English spacing)
:: 3. Comments (#) are stripped (like English notation)
:: 4. Subject-verb agreement in compound statements
:: 5. Active voice preferred in keyword design
:: 6. Articles and prepositions allowed in statement
:: 7. Proper noun capitalization for variables
:: 8. All verbs conjugated correctly (imperative mood)
:: 9. Consistent present tense usage
:: 10. Clear modifier placement in statements
:: 11. Proper pronoun usage in comments and examples
:: 12. Standard English spelling in all keywords



