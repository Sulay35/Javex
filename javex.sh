# parametres :
# $1: -f : the user will give the file name in the next parameter
# $2: [filename] : the name of the file to run the program on (convert into byte code and execute)
# $3: -c : clear the console before execution
# $4: -a : auto mode (don't ask to confirm the execution)

if [ "$1" = "-f" ]; then
    filename=$2
else
    read -p "Nom du fichier : " filename
fi

if [ -e "$filename" ]; then
    # compile the java code
    echo "Compilation de " $filename
    javac $filename && echo "compilation reussie !" && 
    [ "$4" != "-a" ] && ( echo "exec y/n" ; read awns 
    {
    if [ "$awns" = "y" ]; then
            echo "execution de " $filename
            if [ "$3" = "-c" ]; then 
                clear
            fi
            java $filename
    fi
    }) || {
        if [ "$3" = "-c" ]; then 
            clear   
        fi
        java $filename
    }
else 
    echo "Le fichier $filename n'existe pas"
fi

exit


