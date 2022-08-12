PROBLEMA

Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado *Lista_Precios* en su directorio `/home`. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo  sea  vulnerado  porque  otros  empleados  utilizan  su  equipo  al  finalizar  su turno.   Actualmente,   Roxs   posee   una   contraseña   segura,   pero   él   necesita resguardar los datos de ese archivo y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs? 

>**Considere lo siguiente para solucionar el problema.** 
>
>Para  proveer  una  solución  apropiada  para  restringir  accesos  no autorizados  al archivo, se necesita realizar lo siguiente: 
>
>1. Identificar las medidas de seguridad a implementarse. 
>2. Identificar el tipo de usuarios para quienes los permisos >serán cambiados. 
>3. Identificar el tipo de permiso que necesita ser cambiado.
>4. Verificar los permisos de acceso al archivo.

SOLUCION

1.- Como no esta especificado si el usuario Roxs esta en el grupo sudoers, las respuestas la hare como si no lo fuese. Las medidas de seguridad son:
    a) Verificar que ninguno de los usuario del equipo este en el grupo de sudoers, ya que si no lo esta, no le permitira ingresar al home de otra persona.
    b) Verificar que Roxs sea la unica que tenga acceso a esa carpeta, tanto de escritura y lectura

2.- Para ver los permisos del archivo, se debe ejecutar en la carpeta donde esta almacenado el mismo. Se ejecuta el comando "ls -l"

    lsmcba@lsmcba-VirtualBox:~/Desktop/DevOps Challenge 02/bc2-challenge02/02/punto3$ ls -l
    total 0
    -rw-rw-r-- 1 lsmcba lsmcba 0 ago 12 00:47 Lista_Precios

3.- Como vemos en el punto anterior, tanto como el propietario como el grupo tiene acceso a la lectura y escritura, y los demas como solo lectura. Se debe sacar los  permisos del mismo para que el propietario tenga el acceso total al mismo, en el caso de que alguna clave de un usuario del grupo sea vulnerada. El mismo deberia cambiarse de esta manera.
    chmod +rw Lista_Precios
    chmod g-rw Lista_Precios
    chmod o-r Lista_Precios

    lsmcba@lsmcba-VirtualBox:~/Desktop/DevOps Challenge 02/bc2-challenge02/02/punto3$ chmod +rw Lista_Precios 
    lsmcba@lsmcba-VirtualBox:~/Desktop/DevOps Challenge 02/bc2-challenge02/02/punto3$ chmod g-rw Lista_Precios 
    lsmcba@lsmcba-VirtualBox:~/Desktop/DevOps Challenge 02/bc2-challenge02/02/punto3$ chmod o-r Lista_Precios 
    lsmcba@lsmcba-VirtualBox:~/Desktop/DevOps Challenge 02/bc2-challenge02/02/punto3$ ls -l
    total 0
    -rw------- 1 lsmcba lsmcba 0 ago 12 00:47 Lista_Precios

    O se puede usar el comando

    chmod 700 Lista_Precios

    Este comando cambia en 1 linea el permiso de lectura, escritura y ejecucion para el propietario, quitandole los permisos al grupo y al resto de los usuarios

    lsmcba@lsmcba-VirtualBox:~/Desktop/DevOps Challenge 02/bc2-challenge02/02/punto3$ chmod 700 Lista_Precios 
    lsmcba@lsmcba-VirtualBox:~/Desktop/DevOps Challenge 02/bc2-challenge02/02/punto3$ ls -l
    total 0
    -rwx------ 1 lsmcba lsmcba 0 ago 12 00:47 Lista_Precios

4.- Verificando el permiso del archivo

    lsmcba@lsmcba-VirtualBox:~/Desktop/DevOps Challenge 02/bc2-challenge02/02/punto3$ ls -l
    total 0
    -rw------- 1 lsmcba lsmcba 0 ago 12 00:47 Lista_Precios