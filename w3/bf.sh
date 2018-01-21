for value in {1..4}
do
	openssl rsautl -decrypt -inkey PrivateKeys/${value}private.pem -in "T3Files/MMME.txt" -out MMMEoption${value}.txt
done

for value in {1..4}
do
	openssl rsautl -decrypt -inkey PrivateKeys/${value}private.pem -in "T3Files/MMMME.txt" -out MMMMEoption${value}.txt
done

for value in {1..4}
do
	openssl rsautl -decrypt -inkey PrivateKeys/${value}private.pem -in "T3Files/MMMMME.txt" -out MMMMMEoption${value}.txt
done

for value in {1..4}
do
	openssl rsautl -decrypt -inkey PrivateKeys/${value}private.pem -in "T3Files/MMMMMME.txt" -out MMMMMMEoption${value}.txt
done
