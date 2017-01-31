*OSShell
shellExecute: lpOperation file: lpFile parameters: lpParameters directory: lpDirectory show: nShowCmd	
	"https://msdn.microsoft.com/en-us/library/windows/desktop/bb762153(v=vs.85).aspx"
	
	^self ffiCall: #( 
			FFIConstantHandle ShellExecuteA(
     				0,
     				String* lpOperation,
         		String* lpFile,
     				String* lpParameters,
     				String* lpDirectory,
        		int nShowCmd)) module: #shell32