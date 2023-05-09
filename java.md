# Java utils Cheatsheet


## JMX
Enable jmx (jvm options):
```bash
-Dcom.sun.management.jmxremote
-Dcom.sun.management.jmxremote.port=9010
-Dcom.sun.management.jmxremote.local.only=false
-Dcom.sun.management.jmxremote.authenticate=false
-Dcom.sun.management.jmxremote.ssl=false
```


## Check jar content (with only jdk)

```bash
## extract jar
jar xf the_jar-X.Y.Z.jar

#Decompile
javap -c path/to/TheClass.class | less

#good luck
```