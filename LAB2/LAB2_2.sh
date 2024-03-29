
#!/bin/bash

echo -n "Enter your directory 1: "
read -r x

echo -n "Enter your directory 2 : "
read -r y

echo ""
echo "Data value in directory 1"
echo ""

cd "$x"

du -h "$x" | head -n 10

echo ""
echo "Data value in directory 2"
echo ""

cd "$y"

du -h "$y" | head -n 10

