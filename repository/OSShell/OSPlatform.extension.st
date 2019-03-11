Extension { #name : #OSPlatform }

{ #category : #'*OSShell' }
OSPlatform >> system: command [

	^ LibC system: command
]
