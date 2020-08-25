export tag Button
	prop color = "blue"
	def render
		<self>
			<button>
				<span> 
					<slot> "click me"
	css button
		$text: blue2 @hover: blue1
		$color: blue5 @hover: blue4 @active: blue5
		$shade: blue5 @hover: blue4 @active: blue6
		1depth: 4px @hover: 5px @active: 0px
		bg: $color
		transition: all .20s
		transform: translateY(-2depth)
		rd: full
		h: 100px min-width: 100px
		my: 2em
		# surface border
		bxs: 0 0 0 3px blue1/20 inset, 0 0 0 .25depth blue4/15 inset, 0 2depth 0 2px blue8, 0 2depth 0 0px blue1/40, 0 2depth 2depth 3px blue5/30 @hover: 0 0 0 3px blue1/20 inset, 0 0 0 .25depth blue5/15 inset, 0 2depth 0 0 blue8, 0 2depth 0 1px blue9/40, 0 2depth 2depth 1px blue5/30	
		# button glow
		bxs@active: 0 0 0 3px blue1/10 inset, 0 2depth 0 0 blue7 inset, 0 1depth 0 3px blue8
		& span 
			fs:5xl
			fw: bold
			color:$text
