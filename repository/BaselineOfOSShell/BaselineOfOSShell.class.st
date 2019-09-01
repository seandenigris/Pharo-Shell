Class {
	#name : #BaselineOfOSShell,
	#superclass : #BaselineOf,
	#category : #BaselineOfOSShell
}

{ #category : #baselines }
BaselineOfOSShell >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec baseline: 'BabyPhexample' with: [
				spec repository: 'github://seandenigris/Baby-Phexample' ].
		spec package: #'OSShell' ].
]
