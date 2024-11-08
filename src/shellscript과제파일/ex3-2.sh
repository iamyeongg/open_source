num1=$1
operator=$2
num2=$3

case $operator in
	"+")
		result=`expr $num1 + $num2`
		;;
	"-")
		result=`expr $num1 - $num2`
		;;

esac

echo $result
