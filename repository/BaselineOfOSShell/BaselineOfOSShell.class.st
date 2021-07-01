Class {
	#name : #BaselineOfOSShell,
	#superclass : #BaselineOf,
	#category : #BaselineOfOSShell
}

{ #category : #baselines }
BaselineOfOSShell >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec baseline: 'Mocketry' with: [
				spec repository: 'github://dionisiydk/Mocketry' ].
		spec package: #'OSShell' with: [
				spec requires: #('Mocketry' ) ] ].
]
