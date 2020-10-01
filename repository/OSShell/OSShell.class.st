Class {
	#name : #OSShell,
	#superclass : #Object,
	#category : #OSShell
}

{ #category : #'class initialization' }
OSShell class >> initialize [
	Smalltalk tools register: self as: #shell
]

{ #category : #'running-OSProcess' }
OSShell >> command: aString [
	^ self platform system: aString, ' &'
]

{ #category : #accessing }
OSShell >> ensureSucceeds: aString [
	"Should we add this to the API or is there not enough value?"
	| exitStatus |
	exitStatus := self runAndWait: aString.
	self assert: exitStatus equals: 0
]

{ #category : #opening }
OSShell >> open: aString [
	^ self platform open: aString
]

{ #category : #'as yet unclassified' }
OSShell >> outputOf: aString [ 
	^ LibC resultOfCommand: aString
]

{ #category : #'running-OSProcess' }
OSShell >> platform [
	^ OSPlatform current
]

{ #category : #running }
OSShell >> run: aString [
	^ self command: aString
]

{ #category : #running }
OSShell >> runAndWait: aString [
	^ self waitForCommand: aString
]

{ #category : #running }
OSShell >> runExternally: aCommand [
	"i.e. in the default Terminal app, not in the image"

	self platform runExternally: aCommand
]

{ #category : #'running-OSProcess' }
OSShell >> waitForCommand: aString [
	^ self platform system: aString
]
