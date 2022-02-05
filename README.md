# Javex
A bash simple script to execute my java programs automatically (yes I'm lazy)

```console
foo@bar:~$ ./javex.sh -f Main.java
```
```console
Compilation de Main.java ...
[##########(100%)]
Compilation reussie !
exec y/n :y
execution de  Main.java
```

# Parameters 
+ **-f [filename]** : _mention the java file compile and execute_
+ **-a** : _don't ask the user to confirm confirmation to execute the program_
+ **-c** : _clear console before exectuting_


# To do
- multi parameters system : the parameters are taken in account no matter their position
- auto mode : the program don't ask anything and execute my Main.java _please_
- auto execute : once the java file is saved (continuous runtime)
- save as a copy 
