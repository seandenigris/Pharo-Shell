Class {
	#name : #OSShellSpecification,
	#superclass : #BabyPhexample,
	#category : 'OSShell-Specification'
}

{ #category : #tests }
OSShellSpecification >> testAsOssCommand [
	| tmpFile commandString |
	tmpFile := FileReference newTempFilePrefix: '' suffix: ''.
	[ commandString := 'echo 3 > "', tmpFile fullName, '"'.
	commandString asOssCommand run.
	tmpFile contents trimRight should equal: '3' ]
		ensure: [ tmpFile ensureDelete ]
]
