# import * as localForage from 'localforage'
import {Layout} from './components/Layout'
# import faker from 'faker'

# GLOBAL STYLES
global css @root
	*
		p:0
		m:0

# APPROOT
tag app-root
	prop query = ''
	css &
		d:block
		bgc:gray1
		button
			m:4
	def render
		<self>
			<Layout bind:query=query>








imba.mount <app-root>