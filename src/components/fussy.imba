export def fussy needle, haystack
	needle = needle.toLowerCase!
	haystack = haystack.toLowerCase!
	let haystackLength = haystack.length
	let needleLength = needle.length
	if needleLength > haystackLength
		return false
	if needleLength is haystackLength
		return needle is haystack
	let needleLetter = 0
	while needleLetter < needleLength
		let haystackLetter = 0
		let match = false
		var needleLetterCode = needle.charCodeAt(needleLetter++)
		while haystackLetter < haystackLength
			if haystack.charCodeAt(haystackLetter++) is needleLetterCode
				break match = true
		continue if match
		return false
	return true