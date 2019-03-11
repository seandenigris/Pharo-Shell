Extension { #name : #Win32Platform }

{ #category : #'*OSShell' }
Win32Platform >> open: aUrl [

	| winSW_SHOW |
	winSW_SHOW := 5.
	^ self shellExecute: 'open' file: aUrl asString parameters: '' directory: '' show: winSW_SHOW
]

{ #category : #'*OSShell' }
Win32Platform >> shellExecute: lpOperation file: lpFile parameters: lpParameters directory: lpDirectory show: nShowCmd [
	"https://msdn.microsoft.com/en-us/library/windows/desktop/bb762153(v=vs.85).aspx"

	^ self ffiCall: #(FFIConstantHandle ShellExecuteA #(0 , 
			String * lpOperation , 
			String * lpFile , 
			String * lpParameters , 
			String * lpDirectory , 
			int nShowCmd))
		module: #shell32
]
