Extension { #name : #OSShell }

{ #category : #'*OSShell-GToolkit' }
OSShell >> shellCommand: aString runAndWaitOnExitDo: aBlock [
	"As explained in OSSUnixSubprocess documentation, while this is a convenient high-level API, it should only be used when there will not be a large amount of output on either stdout or stderr
	
	aBlock can take up to three arguments:
		- an object representing the process which responds to #isSuccess
		- stdout string
		- stderr string"

	| result |
	result := GtExternalProcessBuilder new
		command: 'sh';
		arg: '-c';
		arg: aString;
		pipeStderr;
		pipeStdout;
		output.
				
	^ aBlock cull: result status cull: result stdoutString cull: result stderrString.
]
