# Quote Test File for Verse Syntax Highlighting

# This should work correctly now - mixed quotes
var test1 : string = "Single 'quotes' inside double quotes"
var test2 : string = 'Double "quotes" inside single quotes'

# These should work fine
var test3 : string = "Regular double quotes"
var test4 : string = 'Regular single quotes'

# Edge cases
var test5 : string = "Escaped \"quotes\" inside"
var test6 : string = 'Escaped \'quotes\' inside'

# The old broken case that was reported
var problematic : string = "This would break with ' single quote"
var also_problematic : string = 'This would break with " double quote'

# Multi-line test
var multiline : string = "This is a long string that might span
multiple lines with 'quotes' inside"