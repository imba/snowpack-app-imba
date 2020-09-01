
# WORD > WORDLIST
export tag Word
	prop cham
	prop ipa
	prop note
	css %card
		bdb: 1px solid gray9
		w:100%
		p:4
	css %cham
		fw:bold
		d:flex
		jc:space-between
	css %ipa
		c:gray4
		b:red 1px solid 
		size: 10px
		d:block
		flg:1
		ta:right
	css %note
		pl:1
		flg:0
	def render
		<self>
			<%card>
				<span%cham> 
					<p> "{index}. " + cham
					<p%ipa> "/{ipa}/"
					<span%note> note
				<slot>