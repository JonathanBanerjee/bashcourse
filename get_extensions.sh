#!/bin/bash

read -p "What is your first name?: " firstname
read -p "What is your surname/family name?: " lastname
read -n 4 -p "What is your extension number? (Must be 4 digits): " ext
echo
read -n 4 -s -p "What access code would you like to use? (Must be 4 digits): " access
echo
PS3="What is your phone type?: "
select phonetype in headset handheld;
do
echo "Your phone type is $phonetype."
break
done

PS3="What is your department? :"
select department in finance sales customer service engineering;
do
echo "Your department is $department."
break
done

#echo "$firstname, $lastname, $ext, $access" >> extensions.csv
