*OSShell
open: aUrl

	^ self shellExecute: 'open' file: aUrl asString parameters: '' directory: '' show: 5 "SW_SHOW"