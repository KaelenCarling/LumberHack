inFile="creds.txt"
cat $inFile | while read password1 password2; do
	echo "INSERT INTO credentials (username, password) VALUES ('$password1', '$password2');"
done