#!/bin/bash
#This wil generate random password

echo "Enter the length of the password to be genrated"
read pass_length

for i in $(seq 1 5):
do 
	openssl rand -base64 48 | cut -c1-$pass_length
done

: "we could have used hex in place of base 64 but it will only give  acombination of small letters and numbers.

"
