<p align="center">
    <img src="../resources/header_viii.png">
</p>

# Openathon VIII QUARKUS - Algo de teoría e instalación

## Primer vistazo a Quarkus

Actualmente hemos pasado de aplicaciones monolíticas donde grandes servidores con grandes capacidades para procesar atendían múltiples peticiones al mismo tiempo a aplicaciones donde se crean y se destruyen pequeños servidores basados en la nube o incluso funciones serverless para procesar las peticiones, atender picos de demanda o incluso una determinada petición. En este nuevo enfoque, java parte en desventaja, ya que el consumo de recursos y el tiempo de arranque de las JVM era inadecuado para este tipo de soluciones, donde sería necesario que un servicio se arrancase y estuviese disponible en microsegundos y que su consumo de recursos fuese el menor posible para permitir convivir al mayor número de ellos. 

Esta es la principal causa por la que hemos visto en estos últimos años crecer otros lenguajes. Quarkus viene a responder a esta necesidad, permitiendo la creación de aplicaciones java con un tiempo de arranque mínimo y un tiempo de disponibilidad inmediato.

Quarkus es un nuevo framework opensource java, desarrollado por Red Hat y orientado a una ejecución optimizada en entornos de sin servidor, cloud y kubernetes. Está diseñado para funcionar con las librerías y frameworks más populares, tales como Eclipse Microprofile, Spring, Apache Kafka, RESTEasy (JAX-RS), Hibernate ORM (JPA), Spring Infinispan, Camel y muchos otros.

Otra característica fundamental de Quarkus es la posibilidad de integrarse con GraalVM (una máquina virtual poliglota que permite la ejecución de diversos lenguajes de programación como Java, Javascript, Python…), para permitir la nativa compilación de las aplicaciones. La compilación nativa nos permite eliminar en el momento de la ejecución la máquina virtual y llegar directamente a la API del sistema operativo, ganando con ello un incremento dramático de la eficiencia de las aplicaciones en términos de consumo de recursos y rendimiento. Esta capacidad de integración de Quarkus y GraaVM, es una ventaja crítica frente a los frameworks previamente existentes (oyes eso Spring Boot??).

Quarkus está definido como ***SUPERSONIC SUBATOMIC JAVA***, ¿porqué?
- **SUPERSONIC**
  - Está diseñado para ser rápida y fácilmente asimilado para los programadores con experiencia previa con java y su integración con los frameworks más populares, permiten que aprovechemos nuestros conocimientos previos.
  - Está diseñado para facilitar el desarrollo de aplicaciones, disponiendo automáticamente de un entorno de prueba que nos permite la modificación en caliente de nuestro código.
- **SUBATOMIC**
  - Pequeño en todos los aspectos, consumo de recursos, tamaño de las imágenes binarias…

Podéis ampliar información en su [página web](https://quarkus.io/).

## ¿Qué vamos a hacer?

En este Openathon vamos a comprobar si realmente Quarkus supone una diferencia frente a otros framework y en particular al que actualmente es el rey: Spring Boot. Vamos a crear dos pequeñas (muy pequeñas no os preocupéis :sweat_smile:) aplicaciones con cada uno de los frameworks y vamos a comparar su desempeño directamente en nuestra JVM y después en contenedores Docker utilizando imágenes no nativas y nativas.


## ¿Qué necesitamos?

Para realizar las actividades, necesitamos comprobar que la máquina donde vamos a hacerlo dispone de:

- [JDK 8 or 11 instalado](https://www.oracle.com/es/java/technologies/javase-jdk11-downloads.html).
- La variable [JAVA_HOME](https://docs.oracle.com/cd/E19182-01/821-0917/inst_jdk_javahome_t/index.html) correctamente configurada.
- [Opcional] Un IDE que nos facilite el trabajo. En nuestro caso hemos utilizado [Visual Studio Code](https://code.visualstudio.com/), pero cualquier otro sería valido o incluso no usar ninguno y realizar todas las actividades con el Notepad, textEdit, Vim…
- [Docker](https://www.docker.com/) u otro gestor de contenedores.

[< Introduccion](../README.md) | [Lab 01>](../lab-01) 

<p align="center">
    <img src="../resources/header_viii.png">
</p>