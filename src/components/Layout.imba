import {Search} from './Search'
import {Words} from './Words'

# LAYOUT
export tag Layout
	langs = ["Cham","English","IPA"]
	lang = langs[0]
	current = 0
	css &
		ff:sans-serif
		header
			p:4
			bg:gray9
			c:white
			d:block
	def render
		<self>
			<header>
				<Search bind:query=query langs=langs lang=lang current=current>
			<main>
				<Words bind:query=query lang=lang dict=data>