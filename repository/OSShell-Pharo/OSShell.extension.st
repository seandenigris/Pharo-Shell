Extension { #name : #OSShell }

{ #category : #'*OSShell-Pharo' }
OSShell >> shellCommand: aString runAndWaitOnExitDo: aBlock [
	"As explained in OSSUnixSubprocess documentation, while this is a convenient high-level API, it should only be used when there will not be a large amount of output on either stdout or stderr
	
	aBlock can take up to three arguments:
		- process
		- stdout string
		- stderr string"

	^ OSSUnixSubprocess new
		shellCommand: aString;
		redirectStderr;
		redirectStdout;
		runAndWaitOnExitDo: aBlock
]
