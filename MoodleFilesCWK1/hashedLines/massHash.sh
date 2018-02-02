for value in {1..10}
do
	echo $value
	openssl dgst -sha256 -out hash-${value}.txt "../lines/line${value}v2.txt"
done
