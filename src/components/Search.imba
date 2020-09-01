
export tag Search
	css &
		%search
			d:flex
		%lang
			bg:gray7 @hover:gray6 @active: gray7
			c:gray2
			flb:60px
			fs:.6em
			jc:center
			d:flex
			ai:center
			p:4
			btlr:2
			bblr:2
			us:none
			cursor:pointer
		%field
			p:2 
			radius:0
			btrr:2 
			bbrr:2 
			bd:0 
			bgc:gray5 @focus:white
			&::placeholder
				c:gray9 @ios: gray1
			fw:bold
			flg:1
			of:hidden
				
	def switchLang
		if current < 2
			current++
			lang = langs[current]
		else
			current = 0
			lang = langs[current]
	prop gap = 1
	def render
		<self>
			<div%search>
				<div%lang @click.switchLang> lang.toUpperCase()
				<input%field bind=query placeholder="Search {lang} word">