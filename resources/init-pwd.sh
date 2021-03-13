#! /bin/bash

apk add openjdk11 maven
export JAVA_HOME=/usr/lib/jvm/default-jvm

java --version
mvn --version

# Descargar el paquete
wget https://repo.spring.io/release/org/springframework/boot/spring-boot-cli/2.4.3/spring-boot-cli-2.4.3-bin.tar.gz

# Descomprimimos el tar. Crea la carpeta spring-2.4.3
tar -zxf spring-boot-cli-2.4.3-bin.tar.gz

# Ejemplo de uso:
# Creamos una aplicación Spring Boot con la dependencia web
./spring-2.4.3/bin/spring init --dependencies=web my-project

kill -9 $(pidof sshd)
/usr/sbin/sshd -o AllowTcpForwarding=yes -o PermitRootLogin=yes

echo "Welcome to Openathon VIII! :)"
