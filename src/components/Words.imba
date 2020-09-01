import * as datajson from '../data.json'
import {Translations} from './Translations'
import {Word} from './Word'
import {fussy} from './fussy'




# WORDLIST > LAYOUT
export tag Words
	# prop query is bound
	prop list = datajson.default
	css &
		fs:.8em

	def render
		<self>
				for item,i in list
					<span>
						for eng in item[4]
							if fussy(query, eng[0]) or fussy(query, item[0])
								<li> <Word index=i cham=item[0] ipa=item[1] note=item[2]>
									<Translations trans=item[4]>