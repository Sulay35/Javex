# parametres :
# $1: -f : the user will give the file name in the next parameter
# $2: [filename] : the name of the file to run the program on (convert into byte code and execute)
# $3: -a : auto mode (don't ask to confirm the execution)
# $4: -c : clear the console before execution


if [ "$1" = "-f" ]; then
    filename=$2
else
    read -p "Nom du fichier : " filename
fi

if [ -e "$filename" ]; then
    # compile the java code
    echo "Compilation de $filename ..."
    echo -ne "[#####     (50%)]\r"
    javac $filename && echo -ne "[##########(100%)]\r" && echo -e "\nCompilation reussie !"

    if [ "$3" = "-a" ]; then 
        echo "execution de " $filename
        if [ "$4" = "-c" ]; then 
            clear
        fi
        java $filename
    else
        read -p "exec y/n :" awns 
        if [ "$awns" = "y" ]; then
            echo "execution de " $filename
            if [ "$4" = "-c" ]; then 
                clear
            fi
            java $filename
        fi
    fi
    
else 
    echo "Le fichier $filename n'existe pas"
fi

exit
