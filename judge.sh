#echo -e "\e[30:37m Please input an expression: "
input=`cat input.txt`
Archer=`cat input.txt |java -jar Archer/src/main.jar`
Berserker=`cat input.txt |java -jar Berserker/src/main.jar`
Caster=`cat input.txt |java -jar Caster/main.jar`
Lancer=`cat input.txt |java -jar Lancer/src/main.jar`
Rider=`cat input.txt |java -jar Rider/src/main.jar`
Saber=`cat input.txt |java -jar Saber/main.jar`
kkout=`cat input.txt |java -jar main.jar`
anser=`cat input.txt | python model.py`

#input
echo -e "\e[30;37m input: $input\n\e[0m"			# 30黑字, 37白底

#Archer
echo -e "\e[30;37m Archer: $Archer\e[0m"
result=`echo -e $Archer"\n"$anser"\n" | python judge.py ` 
if [ "$result" == "True" ]; then
	echo -e "\e[32;47m Accept \e[0m"				# 32绿字, 47白底
else
	echo -e "\e[31;47m Wrong Anser \e[0m"			# 31红字
fi
echo

#Berserker
echo -e "\e[30;37m Berserker: $Berserker\e[0m"
result=`echo -e $Berserker"\n"$anser"\n" | python judge.py ` 
if [ "$result" == "True" ]; then
	echo -e "\e[32;47m Accept \e[0m"
else
	echo -e "\e[31;47m Wrong Anser \e[0m"
fi
echo

#Caster
echo -e "\e[30;37m Caster: $Caster\e[0m"
result=`echo -e $Caster"\n"$anser"\n" | python judge.py ` 
if [ "$result" == "True" ]; then
	echo -e "\e[32;47m Accept \e[0m"
else
	echo -e "\e[31;47m Wrong Anser \e[0m"
fi
echo

#Lancer
echo -e "\e[30;37m Lancer: $Lancer\e[0m"
result=`echo -e $Lancer"\n"$anser"\n" | python judge.py ` 
if [ "$result" == "True" ]; then
	echo -e "\e[32;47m Accept \e[0m"
else
	echo -e "\e[31;47m Wrong Anser \e[0m"
fi
echo

#Rider
echo -e "\e[30;37m Rider: $Rider\e[0m"
result=`echo -e $Rider"\n"$anser"\n" | python judge.py ` 
if [ "$result" == "True" ]; then
	echo -e "\e[32;47m Accept \e[0m"
else
	echo -e "\e[31;47m Wrong Anser \e[0m"
fi
echo

#Saber
echo -e "\e[30;37m Saber: $Saber\e[0m"
result=`echo -e $Saber"\n"$anser"\n" | python judge.py ` 
if [ "$result" == "True" ]; then
	echo -e "\e[32;47m Accept \e[0m"
else
	echo -e "\e[31;47m Wrong Anser \e[0m"
fi
echo

#Me
echo -e "\e[30;37m kkout: $kkout\e[0m"
result=`echo -e $kkout"\n"$anser"\n" | python judge.py ` 
if [ "$result" == "True" ]; then
	echo -e "\e[32;47m Accept \e[0m"
else
	echo -e "\e[31;47m Wrong Anser \e[0m"
fi
echo

#right anser
echo -e "\e[30;37m anser: $anser\n\e[0m"

#$Berserker\n\n$Caster\n\n$Lancer\n\n$Rider\n\n$Saber\n\n$anser\n\n 

#result=`cat myans.txt anser.txt  | python judge.py` 
#echo $result
#echo 
#if [ "$result" == "True" ]; then
#	echo -e "\e[32;47m Accept \e[0m"
#else
#	echo -e "\e[31;47m Wrong Anser \e[0m"
#fi
echo -e "\e[30:37m \nPress enter to quit"
read a
