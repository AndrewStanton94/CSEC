for value in {1..10}
do
	echo $value
	if cmp -s "decryptedHashes/twobinfile-four.txt" "hashedLines/hash-${value}.txt"
	then
	   echo "The files match"
	else
		echo "nope"
	fi

	if cmp -s "decryptedHashes/fourbinfile-two.txt" "hashedLines/hash-${value}.txt"
	then
	   echo "The files match"
	else
		echo "nope"
	fi
done
