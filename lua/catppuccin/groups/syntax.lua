local M = {}

function M.get()
	return {
		Comment = { fg = C.surface2, style = O.styles.comments }, -- just comments
		SpecialComment = { link = "Special" }, -- special things inside a comment
		Constant = { fg = C.peach }, -- (preferred) any constant
		String = { fg = C.green, style = O.styles.strings or {} }, -- a string constant: "this is a string"
		Character = { fg = C.teal }, --  a character constant: 'c', '\n'
		Number = { fg = C.peach, style = O.styles.numbers or {} }, --   a number constant: 234, 0xff
		Float = { fg = C.peach, style = O.styles.numbers or {} }, --    a floating point constant: 2.3e10
		Boolean = { fg = C.peach, style = O.styles.booleans or {} }, --  a boolean constant: TRUE, false
		Identifier = { fg = C.flamingo, style = O.styles.variables or {} }, -- (preferred) any variable name
		Function = { fg = C.blue, style = O.styles.functions or {} }, -- function name (also: methods for classes)
		Statement = { fg = C.mauve }, -- (preferred) any statement
		Conditional = { fg = C.mauve, style = O.styles.conditionals or {} }, --  if, then, else, endif, switch, etC.
		Repeat = { fg = C.mauve, style = O.styles.loops or {} }, --   for, do, while, etC.
		Label = { fg = C.sapphire }, --    case, default, etC.
		Operator = { fg = C.sky, style = O.styles.operators or {} }, -- "sizeof", "+", "*", etC.
		Keyword = { fg = C.mauve, style = O.styles.keywords or {} }, --  any other keyword
		-- Exception     = { }, --  try, catch, throw

		PreProc = { fg = C.pink }, -- (preferred) generic Preprocessor
		Include = { fg = C.mauve, style = O.styles.keywords or {} }, --  preprocessor #include
		Define = { link = "PreProc" }, -- preprocessor #define
		Macro = { fg = C.mauve }, -- same as Define
		PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

		StorageClass = { fg = C.yellow }, -- static, register, volatile, etC.
		Structure = { fg = C.yellow }, --  struct, union, enum, etC.
		Special = { fg = C.pink }, -- (preferred) any special symbol
		Type = { fg = C.yellow, style = O.styles.types or {} }, -- (preferred) int, long, char, etC.
		Typedef = { link = "Type" }, --  A typedef
		SpecialChar = { link = "Special" }, -- special character in a constant
		Tag = { link = "Special" }, -- you can use CTRL-] on this
		Delimiter = { link = "Special" }, -- character that needs attention
		-- Specialoverlay0= { }, -- special things inside a overlay0
		Debug = { link = "Special" }, -- debugging statements

		Underlined = { style = { "underline" } }, -- (preferred) text that stands out, HTML links
		Bold = { style = { "bold" } },
		Italic = { style = { "italic" } },
		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { fg = C.red }, -- (preferred) any erroneous construct
		Todo = { bg = C.yellow, fg = C.base, style = { "bold" } }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = C.yellow },
		qfFileName = { fg = C.blue },
		htmlH1 = { fg = C.pink, style = { "bold" } },
		htmlH2 = { fg = C.blue, style = { "bold" } },
		-- mkdHeading = { fg = C.peach, style = { "bold" } },
		-- mkdCode = { bg = C.terminal_black, fg = C.text },
		mkdCodeDelimiter = { bg = C.base, fg = C.text },
		mkdCodeStart = { fg = C.flamingo, style = { "bold" } },
		mkdCodeEnd = { fg = C.flamingo, style = { "bold" } },
		-- mkdLink = { fg = C.blue, style = { "underline" } },

		-- debugging
		debugPC = { bg = O.transparent_background and C.none or C.crust }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = C.base, fg = C.overlay0 }, -- used for breakpoint colors in terminal-debug
		-- illuminate
		illuminatedWord = { bg = C.surface1 },
		illuminatedCurWord = { bg = C.surface1 },
		-- diff
		diffAdded = { fg = C.green },
		diffRemoved = { fg = C.red },
		diffChanged = { fg = C.blue },
		diffOldFile = { fg = C.yellow },
		diffNewFile = { fg = C.peach },
		diffFile = { fg = C.blue },
		diffLine = { fg = C.overlay0 },
		diffIndexLine = { fg = C.teal },
		DiffAdd = { bg = U.darken(C.green, 0.18, C.base) }, -- diff mode: Added line |diff.txt|
		DiffChange = { bg = U.darken(C.blue, 0.07, C.base) }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { bg = U.darken(C.red, 0.18, C.base) }, -- diff mode: Deleted line |diff.txt|
		DiffText = { bg = U.darken(C.blue, 0.18, C.base) }, -- diff mode: Changed text within a changed line |diff.txt|
		-- NeoVim
		healthError = { fg = C.red },
		healthSuccess = { fg = C.teal },
		healthWarning = { fg = C.yellow },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = C.red },
		GlyphPalette2 = { fg = C.teal },
		GlyphPalette3 = { fg = C.yellow },
		GlyphPalette4 = { fg = C.blue },
		GlyphPalette6 = { fg = C.teal },
		GlyphPalette7 = { fg = C.text },
		GlyphPalette9 = { fg = C.red },
	}
end

return M
