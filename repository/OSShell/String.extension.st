Extension { #name : #String }

{ #category : #'*OSShell' }
String >> asOssCommand [
	^ OSShellCommand fromString: self
]
