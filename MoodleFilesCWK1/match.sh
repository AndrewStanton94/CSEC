for value in {1..10}
do
	echo $value
	if cmp -s "hashes/twobinfile-four.txt" "lineHashes/signedhash-${value}-fourkey.txt"
	then
	   echo "The files match"
	else
		echo "nope"
	fi
done

for value in {1..10}
do
	echo $value
	if cmp -s "hashes/fourbinfile-two.txt" "lineHashes/signedhash-${value}-twokey.txt"
	then
	   echo "The files match"
	else
		echo "nope"
	fi
done
