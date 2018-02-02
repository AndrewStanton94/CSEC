for value in $(ls PrivateKeys)
do
	index=`expr index "$value" key`
	openssl rsautl -decrypt -inkey PrivateKeys/${value} -in "fourbinfile.txt" -out fourbinfile-${value:0:$index}.txt
done
wc -l fourbinfile-*
