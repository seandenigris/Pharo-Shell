as yet unclassified
testAsOssCommand
	| tmpFile commandString tmpFilename |
	tmpFile := FileReference newTempFilePrefix: '' suffix: ''.
	commandString := 'echo 3 > "', tmpFile fullName, '"'.
	commandString asOssCommand run.
	tmpFile contents trimRight should equal: '3'.
	tmpFile delete