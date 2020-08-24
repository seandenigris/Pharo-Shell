Extension { #name : #MacOSXPlatform }

{ #category : #'*OSShell' }
MacOSXPlatform >> open: aUrl [

	| openCommand |
	openCommand := 'open "{1}"' format: { aUrl asString }.
	self system: openCommand
]

{ #category : #'*OSShell' }
MacOSXPlatform >> runExternally: aCommand [

	| command scriptTemplate script safeCommand |
	scriptTemplate := 'tell application "Terminal"
	activate
  do script "{script}"
end tell'.
	safeCommand := aCommand copyReplaceAll: '"' with: '\"'.
	script := scriptTemplate format: { #script -> safeCommand } asDictionary.
	Tempfile do: [ :f |
		f ensureCreateFile writeStreamDo: [ :s | s nextPutAll: script ].
		command := 'osascript "{1}"' format: { f fullName }.
		self system: command ]
]
