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
		spec 
			package: #'OSShell' with: [
				spec requires: #('Mocketry') ] ].
			
	spec for: #notGToolkit do: [ 
		spec 
			package: #'OSShell-Pharo' with: [ spec requires: #('OSShell') ];
			package: 'OSShell' with: [ spec includes: #('OSShell-Pharo') ] ].
			
	spec for: #GToolkit do: [ 
		spec 
			package: 'OSShell-GToolkit' with: [ spec requires: #('OSShell') ];
			package: 'OSShell' with: [ spec includes: #('OSShell-GToolkit') ] ]
]

{ #category : #accessing }
BaselineOfOSShell >> customProjectAttributes [

	^ self isGTImage
			ifTrue: [ #(GToolkit) ]
			ifFalse: [ #(notGToolkit) ].
			
	"This is just for code generation purposes. To have an effect, it needs to be on the instance-side, but that could hide problems in other baselines because DeNigrisPreferences is not guaranteed to be loaded"
]

{ #category : #testing }
BaselineOfOSShell >> isGTImage [
	
	^ RPackageOrganizer default packageNames anySatisfy: [ :pn | pn beginsWith: 'Lepiter-' ].
	"Implementation note: used to check for GToolkit prefix, but P7 has a GToolkit-Examples package. Lepiter, OTOH, could only be loaded in a GT image"
]
