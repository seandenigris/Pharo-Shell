Extension { #name : #UnixPlatform }

{ #category : #'*OSShell' }
UnixPlatform >> open: aURL [
	"self open: 'http://www.pharo.org'"
	| openCommand |
	openCommand := 'xdg-open {1} &' format: { aURL asString }.
	self system: openCommand.
]
