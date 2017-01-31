*OSShell
open: aURL
	"
	self openOn: 'http://www.pharo.org'
	"
	| openCommand |
	openCommand := 'xdg-open {1} &' format: { aURL asString }.
	self system: openCommand.