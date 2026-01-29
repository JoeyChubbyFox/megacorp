# --- Credit card scan ---
printf "====================\nScanning for credit cards\n====================\n"
grep -rE --color=always --line-number --exclude-dir={.git} '[0-9]{4}([ -]?[0-9]{4}){3}' .
printf "====================\nCredit card scan complete\n====================\n"

# --- SSN scan ---
printf "====================\nScanning for SSNs\n====================\n"
grep -rE --color=always --line-number --exclude-dir={.git} '[0-9]{3}-[0-9]{2}-[0-9]{4}' .
printf "====================\nSSN scan complete\n====================\n"

# --- Phone scan ---
printf "====================\nScanning for phone numbers\n====================\n"
grep -rE --color=always --line-number --exclude-dir={.git} '[0-9]{3}-[0-9]{3}-[0-9]{4}' .
grep -rE --color=always --line-number --exclude-dir={.git} '\([0-9]{3}\)[ ]?[0-9]{3}-[0-9]{4}' .
printf "====================\nPhone scan complete\n====================\n"
