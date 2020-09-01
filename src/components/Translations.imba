# TRANSLATION-LIST > WORD-LIST/WORD
export tag Translations
	css ol
		ml:0
		c:gray9
	css %translation
		py:1
		ml:4
		bdb: 1px solid gray3
	css %meaning
		py:3
	css %definition
		c:gray7
	css %use
		c:blue7
	css %info
		c:gray5
		ff:serif
		font-style:italic
	def render
		<self>
			<ol>
				for t in trans
					<li%translation> 
						<p%meaning[d:flex jc:space-between]> 
							<span%definition> t[0] # definition
							<span%use> t[2] # use
						<p%info> t[1] # use