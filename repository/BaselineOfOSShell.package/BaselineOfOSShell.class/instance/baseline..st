baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec baseline: 'BabyPhexample' with: [
				spec repository: 'github://seandenigris/Baby-Phexample:master/repository' ].
		spec package: #'OSShell' ].