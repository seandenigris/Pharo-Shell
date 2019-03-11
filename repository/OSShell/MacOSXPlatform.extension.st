Extension { #name : #MacOSXPlatform }

{ #category : #'*OSShell' }
MacOSXPlatform >> open: aUrl [

	| openCommand |
	openCommand := 'open "{1}"' format: { aUrl asString }.
	self system: openCommand
]

{ #category : #'*OSShell' }
MacOSXPlatform >> runExternally: aCommand [

	| command scriptTemplate script |
	scriptTemplate := 'tell application "Terminal"
	activate
  do script "{script}"
end tell'.
	script := scriptTemplate format: { #script -> aCommand } asDictionary.
	Tempfile do: [ :f |
		f writeStreamDo: [ :s | s nextPutAll: script ].
		command := 'osascript "{1}"' format: { f fullName }.
		self system: command ]
]
