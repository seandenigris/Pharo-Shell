Class {
	#name : #OSShellCommand,
	#superclass : #Object,
	#instVars : [
		'command'
	],
	#category : 'OSShell'
}

{ #category : #'instance creation' }
OSShellCommand class >> fromString: aString [ 

	^ self new
			command: aString;
			yourself
]

{ #category : #accessing }
OSShellCommand >> command [
	^ command
]

{ #category : #accessing }
OSShellCommand >> command: aString [ 
	command := aString
]

{ #category : #running }
OSShellCommand >> run [
	^ Smalltalk tools shell new command: self command
]
