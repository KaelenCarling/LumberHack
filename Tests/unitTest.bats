
@test "tests if the SQL scripts formats outputted credentials" {
	run /LumberHack/sqlCredential.sh
	[ "$status" -eq 0 ]
	[ "$output" = "INSERT INTO credentials (username, password) VALUES ('$password1', '$password2');" ]
}
