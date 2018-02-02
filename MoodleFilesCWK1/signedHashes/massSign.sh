echo "Signing the files"
rm *.txt

for value in {1..10}
do
	echo $value
	openssl dgst -sha256 -sign ../PrivateKeys/fourkey.pem -out signedhash-${value}-fourkey.txt "../lines/line${value}v2.txt"
	openssl dgst -sha256 -sign ../PrivateKeys/twokey.pem -out signedhash-${value}-twokey.txt "../lines/line${value}v2.txt"

	openssl rsautl -sign -inkey ../PrivateKeys/fourkey.pem -in "../hashedLines/hash-${value}.txt" -out "signedhash-rsa-${value}-fourkey.txt"
	openssl rsautl -sign -inkey ../PrivateKeys/fourkey.pem -in "../hashedLines/hash-bin-${value}.txt" -out "signedhash-rsa-bin-${value}-fourkey.txt"

	openssl rsautl -sign -inkey ../PrivateKeys/twokey.pem -in "../hashedLines/hash-${value}.txt" -out "signedhash-rsa-${value}-twokey.txt"
	openssl rsautl -sign -inkey ../PrivateKeys/twokey.pem -in "../hashedLines/hash-bin-${value}.txt" -out "signedhash-rsa-bin-${value}-twokey.txt"
done
