for value in {1..10}
do
	echo $value
	openssl dgst -sha256 -sign ../PrivateKeys/fourkey.pem -out signedhash-${value}-fourkey.txt "../hashedLines/hash-${value}.txt"

	openssl dgst -sha256 -sign ../PrivateKeys/twokey.pem -out signedhash-${value}-twokey.txt "../hashedLines/hash-${value}.txt"
done
