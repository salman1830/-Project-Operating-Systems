#!bin/bash
clear
banner STUDENT MANAGEMENT
echo "1.Login"
echo "2.about"
echo "3.exit"
stud_manage() {
   clear
   banner STUDENT MANAGEMENT
   echo "1.View The Database"
   echo "2.View Specific Records"
   echo "3.Add Records "
   echo "4.Delete Records"
   echo "5.Exit"
   echo "Enter Your Choice:"
   read choice
    case $choice in
        1)cat $db
          echo "Do you want to continue?"
          read i
          if [ $i == "y" ]
          then
             clear
             banner STUDENT MANAGEMENT
             stud_manage
          fi;;

        2)echo "Enter id: "
          read id
            grep -i "$id" $db
            echo "Do you want to continue?"
          read i
          if [ $i == "y" ]
          then
             clear
             banner STUDENT MANAGEMENT
             stud_manage
          fi;;

        3)echo "Enter new student id: "
          read sid
          echo "Enter name: "
          read snm
          echo "Enter designation: "
          read sdes
          echo "Enter instituation name: "
          read sins
          echo "$sid   $snm   $sdes   $sins ">>$db
          echo "Do you want to continue?"
          read i
          if [ $i == "y" ]
          then
             clear
             banner STUDENT MANAGEMENT
             stud_manage
          fi;;

        4)echo "Enter Id:"
          read id
        grep -v "$id" $db > tmpfile && mv tmpfile $db
          echo "Record Deleted."
         cat $db
         echo "Do you want to continue?"
         read i
         if [ $i == "y" ]
         then
             clear
             banner STUDENT MANAGEMENT
         fi;;

   esac
}
echo "Choose 1/2/3"
read choose
 if [ $choose -eq 1 ];
 then
    banner Login
    echo "Enter Username:"
    read user
    echo "Enter Password"
    read pass
     if [ $user == "SalHab" ] && [ $pass == "580627" ];
     then
        echo  "Login Successfull!"
        echo  "Enter name of database: "
        read db
        stud_manage
     else
     echo "Login failed"
     fi
 elif [ $choose -eq 2 ];
 then
    banner Diu Falcons
 else
 exit
fi

