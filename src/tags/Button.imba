export tag Button
	prop color = "teal"
	def render
		<self>
			<button[]>
				<span> 
					<slot> "click me"
	css button
		$text: teal2 @hover: teal1
		$color: teal5 @hover: teal4 @active: teal5
		$shade: teal5 @hover: teal4 @active: teal6
		1depth: 4px @hover: 5px @active: 0px
		bg: $color
		transition: all .20s
		transform: translateY(-2depth)
		radius: 50px
		h: 100px min-width: 100px
		my: 2em
		# surface border
		bs: 0 0 0 3px teal1/20 inset, 0 0 0 .25depth teal4/15 inset, 0 2depth 0 2px teal8, 0 2depth 0 0px teal1/40, 0 2depth 2depth 3px teal5/30 @hover: 0 0 0 3px teal1/20 inset, 0 0 0 .25depth teal5/15 inset, 0 2depth 0 0 teal8, 0 2depth 0 1px teal9/40, 0 2depth 2depth 1px teal5/30
		# button glow
		bs@active: 0 0 0 3px teal1/10 inset, 0 2depth 0 0 teal7 inset, 0 1depth 0 3px teal8
		& span 
			fs:5xl
			fw: bold
			color:$text
