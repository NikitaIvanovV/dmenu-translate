#!/bin/sh

# Save default config from script to file
sed -n '
	/cat > "$config_file"/,/EOF/!d
	/EOF/d
	s/^\s*//
	p
	' dmenu-translate > .temp

# Replace everything between <!-CONFIG --> tags
# with .temp content
sed -i '
	/<!-- CONFIG -->/,//!b
	/<!-- CONFIG -->/{
		n
		r.temp
		b
	}
	/```/!d
	' README.md
