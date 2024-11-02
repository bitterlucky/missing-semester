 #!/usr/bin/env bash
 script=$1
 success_log="success_log.txt"
 error_log="error_log.txt"
 count=0
 while true; do
	 if ./"$script" >> "$success_log" 2>> "$error_log"; then
		 count=$((count + 1))
	else
		echo "$count"
		break
	fi
done
		 
