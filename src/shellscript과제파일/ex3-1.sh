count=$1

if [ -z "$count" ]; then
	count=10
fi

i=0
while [ "$i" -lt "$count" ]
do
	echo "hello world"
	i=`expr $i + 1`

done
