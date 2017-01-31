*OSShell
open: aUrl

	| openCommand |
	openCommand := 'open "{1}"' format: { aUrl asString }.
	self system: openCommand