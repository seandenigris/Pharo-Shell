*OSShell
open: aUrl

	| winSW_SHOW |
	winSW_SHOW := 5.
	^ self shellExecute: 'open' file: aUrl asString parameters: '' directory: '' show: winSW_SHOW