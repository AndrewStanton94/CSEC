for value in {1..10}
do
	echo $value
	openssl dgst -sha256 -verify PublicKeys/twopubkey.pem -signature hashes/twobinfile-four.txt "lines/line$value.txt"
done
wc -l lines


