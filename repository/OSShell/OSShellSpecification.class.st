Class {
	#name : #OSShellSpecification,
	#superclass : #TestCase,
	#category : #'OSShell-Specification'
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
