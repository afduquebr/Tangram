# Tangram
Autor: Andrés Felipe Duque Bran

***
## Descripción
Es un rompecabezas, a partir del cual se pueden construir múltiples figuras sin sobreponer las siete (7) piezas que contiene. Estas son:

  * Cinco (5) triángulos de tres diferentes tamaños:
    * Dos (2) triángulos grandes.
    * Un (1) triángulo mediano.
    * Dos (2) triángulos pequeños.
    
  * Dos (2) cuadriláteros:
    * Un (1) cuadrado.
    * Un (1) paralelogramo.
  
*La información expuesta en esta sección fue tomada de* [Wikipedia.org](https://es.wikipedia.org/wiki/Tangram).
  
***
## Implementación
Para la implementación de este juego se realizó un desarrollo en el lenguaje de programación *Processing Java*. En la cual, a través del uso de una ventana 
de 700x800 píxeles se permite la interacción con el Tangram de dos formas distintas. En primer lugar, un modo libre, en donde el usuario puede intentar crear 
figuras y recrear algunas otras que se encuentren disponibles en Internet. En segundo lugar, el usuario dispondrá de cuatro (4) niveles  en los cuales intentará
completar con éxito las figuras precargardas por el programa, éste indicará si el desarrollo se llevo a cabo de forma correcta. 

***
## Instrucciones.
  1. En la carpeta Tangram se encuentra los archivos siguientes:
  
      * Tangram.pde : Contiene el desarrollo central de la interfaz y su interacción con el hardware.
      
      * Functions.pde : Contiene las funciones del programa relacionadas con los modos de manejo del programa.
      
      * Quad.pde : Contiene la clase ```Quad```, que describe el comportamiento asociado específicamente a los cuadriláteros.
      
      * Shape.pde : Contiene la clase ```Shape```, que describe el comportamiento asociado a las figuras. Su desarrollo se encuentra basado 
    en el archivo Shape.pde que se encuentra [aquí](https://github.com/objetos/TangramRosetta/blob/master/TangramOO/Shape.pde).
    
      * Triangle.pde : Contiene la clase ```Triangle```, que describe el comportamiento asociado específicamente a los triángulos.
  
  Para poder correr este aplicativo, es necesario tener instalado el lenguaje de programación *Processing*, que por defecto se encuentra basado en *Java*, para su 
  descarga puede consultar [aquí](https://processing.org/download/). Una vez asegurado lo anterior, puede proceder a abrir y correr el código, evite cambiar el 
  nombre de los archivos o la carpeta en que se encuentran contenidos.
  
  2. Al ejecutar el programa, una ventana de 700x800 píxeles surgirá con las siete (7) figuras presentes. Y con el fin de iniciar el juego se pueden llevar a 
  cabo las siguientes opciones:
  
      1. Interactuar libremente con las figuras.
    
      2. Dar inicio a cualquiera de los cuatro (4) niveles haciendo uso de las teclas ```0```, ```1```, ```2``` y ```3```.
  
  3. Para interactuar con las figuras puede trasladarlas sobre la ventana o rotarlas sobre su propio eje.
      
      1. Para trasladarlas es necesario que seleccione la figura que desea mover y mantenga oprimido el mouse hasta llegar a la posición deseada. Evite trasladar
      la figura sobreponiendola sobre las demás o puede que esta deje de moverse.
      
      2. Para rotarlas debe ubicar el cursor sobre la figura que desea gira y luego presione la tecla ```R``` para el sentido horario, o la tecla ```L``` para el 
      sentido antihorario.
  
  4. En caso de querer regresar al inicio, descrito en el paso 2, debe utilizar la tecla ```BACKSPACE```. 
  
*** 

*Este trabajo fue realizado como tarea para la materia de Programación Orientada a Objetos a cargo del profesor Jean Pierre Charalambos, en la Universidad Nacional 
de Colombia en el semestre 2021-1. Sus lineamientos se pueden consultar en el archivo* [Tangram Rosetta](https://github.com/objetos/TangramRosetta/blob/master/README.md).
