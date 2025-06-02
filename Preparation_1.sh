	
	#!/bin/bash
	
	#Display the current user.
	#Display the current directory.
	#Display today's date in the format: Day, Month Date, Year (e.g., Tuesday, October 10, 2023).
	#Display the system uptime.
	
	#Display the current user
	echo "current user : $(whoami)"
	
	#Display the current directory.
	
	echo "current director: $(pwd)"
	
	#Display today's date in the format: Day, Month Date, Year (e.g., Tuesday, October 10, 2023)
	
	echo "Today's Date: $(date '+%A, %B %d, %Y')"
	
	#Display the system uptime
	
	echo "System uptime: $(uptime)"
	
	
