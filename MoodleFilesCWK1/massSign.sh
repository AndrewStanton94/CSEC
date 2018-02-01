for value in {1..10}
do
	echo $value
	openssl dgst -sha256 -sign PrivateKeys/fourkey.pem -out lineHashes/signedhash-${value}-fourkey.txt "lines/line${value}v2.txt"
done

for value in {1..10}
do
	echo $value
	openssl dgst -sha256 -sign PrivateKeys/twokey.pem -out lineHashes/signedhash-${value}-twokey.txt "lines/line${value}v2.txt"
done
wc -l
