<p align="center">
    <img src="../resources/header_viii.png">
</p>

# Openathon VIII QUARKUS - Algo de teoría e instalación

## Primer vistazo a Quarkus

Actualmente hemos pasado de aplicaciones monolíticas donde grandes servidores con grandes capacidades para procesar atendían múltiples peticiones al mismo tiempo a aplicaciones donde se crean y se destruyen pequeños servidores basados en la nube o incluso funciones serverless para procesar las peticiones, atender picos de demanda o incluso una determinada petición. En este nuevo enfoque, java parte en desventaja, ya que el consumo de recursos y el tiempo de arranque de las JVM era inadecuado para este tipo de soluciones, donde sería necesario que un servicio se arrancase y estuviese disponible en microsegundos y que su consumo de recursos fuese el menor posible para permitir convivir al mayor número de ellos. 

Esta es la principal causa por la que hemos visto en estos últimos años crecer otros lenguajes. Quarkus viene a responder a esta necesidad, permitiendo la creación de aplicaciones java con un tiempo de arranque mínimo y un tiempo de disponibilidad inmediato.

Quarkus es un nuevo framework opensource java, desarrollado por Red Hat y orientado a una ejecución optimizada en entornos de sin servidor, cloud y kubernetes. Está diseñado para funcionar con las librerías y frameworks más populares, tales como Eclipse Microprofile, Spring, Apache Kafka, RESTEasy (JAX-RS), Hibernate ORM (JPA), Spring Infinispan, Camel y muchos otros.

Otra característica fundamental de Quarkus es la posibilidad de integrarse con GraalVM (una máquina virtual poliglota que permite la ejecución de diversos lenguajes de programación como Java, Javascript, Python…), para permitir la nativa compilación de las aplicaciones. La compilación nativa nos permite eliminar en el momento de la ejecución la máquina virtual y llegar directamente a la API del sistema operativo, ganando con ello un incremento dramático de la eficiencia de las aplicaciones en términos de consumo de recursos y rendimiento. Esta capacidad de integración de Quarkus y GraaVM, es una ventaja crítica frente a los frameworks previamente existentes (¿Oyes eso Spring Boot?).

Quarkus está definido como ***SUPERSONIC SUBATOMIC JAVA***, ¿Por qué?
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
- [Apache Maven](https://maven.apache.org/download.cgi) 3.6.2+
- [Opcional] Un IDE que nos facilite el trabajo. En nuestro caso hemos utilizado [Visual Studio Code](https://code.visualstudio.com/), pero cualquier otro sería valido o incluso no usar ninguno y realizar todas las actividades con el Notepad, textEdit, Vim…
- [Docker](https://www.docker.com/) u otro gestor de contenedores.

***Nota:** Si nos decantamos por utilizar Docker como gestor de contenedores, hay que comprobar que el Pulse Secure instalado en el pc sea una versión igual o superior a 9.1, ya que existe una incompatibilidad con versiones inferiores entre Docker y Pulse Secure que provoca la desactivación de Wifi en el pc. [Reinstalar_PulseSecure.pdf](../resources/Reinstalar_PulseSecure.pdf), manual reinstalación Pulse Secure*

## Alternativas para la ejecución del laboratorio en un pc windows

|   | Alternativa | Pros | Contras |
| --- | --- | --- | --- |
| 1 | Windows + Docker Desktop | Si es tu herramienta de trabajo habitual es comodo | Limitaciones de espacio, puede haber incompatibilidades con software instalado |
| 2 | Docker Play | No requiere de instalacion en local ni espacio adicional, es un linux en la nube| Montar el entorno cada vez que se accede, puede haber algun cuello de botella si hay mucha gente conectada   |
| 3 | Linux Virtualizado (VirtualBox, VMWAre, etc) | Aisla la instalación de herramientas y actua como una sandbox. Es una manera de entrar al mundo Linux / linea de comandos si no lo has hecho nunca | Limitaciones de espacio, puede requerir 15-20GB libres  |
| 4 | Mac o Linux Workstation| Si es tu herramienta de trabajo habitual es comodo | Puede haber incompatibilidades con software instalado |

Para la alternativa de Linux virtualizado hemos realizado un par de documentos que explican la instalación paso a paso de un Xubuntu 20.04 sobre Oracle VM VirtualBox y tambien la preparacion del entorno de desarrollo necesario para el Openathon.

 - [XubuntuVirtualBoxInstallation.pdf](../resources/XubuntuVirtualBoxInstallation.pdf),  instalación de Xubuntu con Virtual Box paso a paso
 - [XubuntuVirtualBoxDevEnv.pdf](../resources/XubuntuVirtualBoxDevEnv.pdf), instalación de herramientas de desarrollo en Xubuntu, JVM, docker, maven, git y vscode para el openathon 

[< Introduccion](../README.md) | [Lab 01>](../lab-01) 

<p align="center">
    <img src="../resources/header_viii.png">
</p>
