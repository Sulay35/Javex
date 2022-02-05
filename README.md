# Javex
A bash simple script to execute my java programs automatically (yes I'm lazy)
```console
foo@bar:~$ ./javex.sh -f Main.java -c -a 
Compilation de  Main.java
compilation reussie !
exec y/n
```

# Parameters 
+ **-f [filename]** : _mention the java file compile and execute_
+ **-c** : _clear console before exectuting_
+ **-a** : _don't ask the user to confirm confirmation to execute the program_

# To do
- multi parameters system : the parameters are taken in account no matter their position
- auto mode : the program don't ask anything and execute my Main.java _please_
- auto execute : once the java file is saved (continuous runtime)
- save as a copy 
