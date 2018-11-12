#! /bin/bash
# username.sh
echo "It must start with a lower case letter"
echo "It must contain at least three but no more than 12 characters"
echo "The only characters that can be used are:"
echo "lower case letters,"
echo "digits, and"
echo "the underscore character"
echo "Enter a potential username: "
read USERNAME
while echo $USERNAME | egrep -v "^[a-z][a-z,A-Z,0-9,_]{3,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"

