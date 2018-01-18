for value in {1..4}
do
	openssl rsautl -decrypt -inkey PrivateKeys/${value}private.pem -in "T3Files/$(printf "%0.sM" {1.. ${value})E.txt" -out option${value}.txt
done

