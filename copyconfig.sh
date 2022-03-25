#!/bin/sh

# Save default config to .temp
sed '
	/cat > "$config_file"/,/EOF/!d
	/EOF/d
	s/^\s*//
	' dmenu-translate > .temp

# Replace code between <!-- CONFIG --> tags
# with .temp content
sed -i '
	/<!-- CONFIG -->/,//!b
	/<!-- CONFIG -->/ {
		n
		r.temp
		b
	}
	/```/!d
	' README.md
