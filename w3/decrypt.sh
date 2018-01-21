for value in {1..4}
do
	openssl rsautl -verify -pubin -inkey T3Files/${value}public.pem -in option4.txt -out verifiedtest${value}.txt
done

