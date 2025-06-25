# Análisis comparativo de filogenias de felinos africanos
#### Nicolas Caicedo (nacaicedom@puce.edu.ec) </br> June 25, 2025

Este proyecto se centra en el análisis comparativo de la filogenia de los felinos africanos mediante un enfoque combinado de datos moleculares (secuencias genéticas mitocondriales y nucleares) y características morfológicas. El objetivo principal es reconstruir las relaciones evolutivas entre especies clave de felinos del continente africano, como el león (Panthera leo), el guepardo (Acinonyx jubatus), el leopardo (Panthera pardus), el caracal (Caracal caracal), el serval (Leptailurus serval) y el gato montés africano (Felis lybica).

A través del uso de software especializado en filogenia como ATOM, dataset, MUSCLE, IQTREE y la app FigTree, se generaron árboles filogenéticos. Los resultados revelaron patrones de divergencia genética que respaldan la monofilia del grupo Panthera y sugieren una proximidad genética inesperada entre el caracal y el serval. Además, se discutieron eventos de especiación relacionados con la expansión del hábitat, cambios climáticos y presiones ecológicas compartidas.

![FELINOS](https://www.lavanguardia.com/peliculas-series/images/all/movie/backdrops/2011/4/movie-57586/w1280/mFTlNXsPzny0geJLxdo3ddzFR1Q.jpg)

###  Program Workflow
Este proyecto de análisis comparativo de la filogenia de felinos africanos siguió el siguiente flujo de trabajo:

Obtención y preparación de datos:
Se recopilaron secuencias genéticas de felinos africanos a partir de datasets públicos disponibles en bases de datos como GenBank. Las secuencias en formato FASTA fueron revisadas y editadas usando Atom para asegurar su correcta estructura y formato.

Alineamiento múltiple:
Se realizó un alineamiento múltiple de las secuencias utilizando MUSCLE, generando un archivo alineado que permitió la comparación homóloga entre las especies.

Construcción del árbol filogenético:
Con el alineamiento generado, se empleó IQ-TREE para inferir el árbol filogenético utilizando métodos estadísticos robustos, incluyendo selección automática del mejor modelo evolutivo y análisis de soporte por bootstrap.

Visualización y edición del árbol:
El árbol resultante fue visualizado y editado en FigTree, facilitando la interpretación de las relaciones evolutivas y la presentación gráfica de los resultados.

### Dependencias

Atom
Editor de texto para revisar y preparar secuencias en formato FASTA.
https://atom.io/

MUSCLE
Programa para realizar alineamientos múltiples de secuencias.
https://www.drive5.com/muscle/

IQ-TREE
Software para inferencia de árboles filogenéticos con modelos evolutivos avanzados y análisis bootstrap.
http://www.iqtree.org/

FigTree
Herramienta gráfica para visualizar y editar árboles filogenéticos.
http://tree.bio.ed.ac.uk/software/figtree/

Mesquite
Plataforma modular para análisis evolutivos y manejo de datos filogenéticos, usada para explorar y manipular matrices de caracteres y árboles.
http://www.mesquiteproject.org/

### Output esperado

Archivo de secuencias limpio (.fasta)
Secuencias revisadas y correctamente formateadas listas para alineamiento.

Archivo de alineamiento (felinos_aligned.fasta)
Resultado del alineamiento múltiple realizado con MUSCLE, donde las secuencias están organizadas para reflejar posiciones homólogas entre especies.

Archivo de árbol filogenético (.treefile)
Árbol en formato Newick generado por IQ-TREE que representa las relaciones evolutivas entre las especies de felinos africanos, acompañado de valores de soporte (bootstrap y aLRT).

Reporte de IQ-TREE (.iqtree)
Archivo con información detallada sobre el modelo evolutivo seleccionado, estadísticas del análisis y soporte de ramas.

Visualización gráfica del árbol
Imagen exportada desde FigTree (PNG, PDF, etc.) mostrando el árbol filogenético con etiquetas y valores de soporte claros para interpretación.

Análisis adicional en Mesquite
Posibilidad de explorar y manipular matrices de caracteres y árboles para un estudio evolutivo más profundo.


### Autor

* Nicolas Caicedo
    * Estudiante de Bioingenieria 6to nivel PUCE
    * contacto: nacaicedom@puce.edu.ec
* Este programa fue creado para proyecto final de la clase de Biotecnologia y Herramientas Bioinformaticas el 25/06/2025
