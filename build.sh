#!/bin/bash

cd Archer
cd src
javac -encoding utf-8 ./*.java
echo -n 'Main-Class: ' >manifest
grep 'public static void main' -r | sed s/\.java.*// >>manifest
sed /test/d manifest | tee manifest
jar cfm main.jar manifest *.class 
rm *.class 
cd ..
cd ..

cd Berserker
cd src
javac -encoding utf-8 ./*.java
echo -n 'Main-Class: ' >manifest
grep 'public static void main' -r | sed s/\.java.*// >>manifest
sed /test/d manifest | tee manifest
jar cfm main.jar manifest *.class factors/*.class items/*.class
rm *.class factors/*.class items/*.class
cd ..
cd ..

cd Caster
javac -encoding utf-8 ./*.java
echo -n 'Main-Class: ' >manifest
grep 'public static void main' -r | sed s/\.java.*// >>manifest
sed /test/d manifest | tee manifest
jar cfm main.jar manifest *.class 
rm *.class 
cd ..

cd Lancer
cd src
javac -encoding utf-8 ./*.java
echo -n 'Main-Class: ' >manifest
grep 'public static void main' -r | sed s/\.java.*// >>manifest
sed /test/d manifest | tee manifest
jar cfm main.jar manifest *.class 
rm *.class 
cd ..
cd ..

cd Rider
cd src
javac -encoding utf-8 ./*.java
echo -n 'Main-Class: ' >manifest
grep 'public static void main' -r | sed s/\.java.*// >>manifest
sed /test/d manifest | tee manifest
jar cfm main.jar manifest *.class 
rm *.class 
cd ..
cd ..

cd Saber
javac -encoding utf-8 ./*.java
echo -n 'Main-Class: ' >manifest
grep 'public static void main' -r | sed s/\.java.*// >>manifest
sed /test/d manifest | tee manifest
jar cfm main.jar manifest *.class 
rm *.class 
cd ..
