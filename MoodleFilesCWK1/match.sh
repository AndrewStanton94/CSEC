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
