echo "Generating data"
(cd hashedLines; ./massHash.sh)
(cd signedHashes/; ./massSign.sh)

for file in $(ls signedHashes/*four*)
do
	if cmp -s "decryptedHashes/fourbinfile-two.txt" "${file}"
	then
	   echo "The file ${file} matches"
	fi
done

for file in $(ls signedHashes/*two*)
do
	if cmp -s "decryptedHashes/twobinfile-four.txt" "${file}"
	then
	   echo "The file ${file} matches"
	fi
done
