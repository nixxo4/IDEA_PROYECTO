# Elaborado por: Nicolas Caicedo (nacaicedom@puce.edu.ec)
# 5 de julio de 2025

## Código para el proyecto final

mkdir PROYECTOFINAL # Directorio donde vamos a realizar todo el trabajo 

# Gen: ND1  Familia: Panthera

mkdir ND1_Felidae # Creamos un directorio para guardar los genes

./datasets download gene symbol ND1 --ortholog Felidae --filename ND1_Felidae.zip # Código para descargar el gen ND1 de la familia Felidae

mv ND1_Felidae.zip ND1_Felidae/ # Movemos el gen a su respectiva carpeta

cd ND1_Felidae

unzip * # Hacemos unzip del archivo .zip 

mv ncbi_dataset/data/rna.fna . # Se creo una carpeta (ncbi_dataset) donde se encuentra el gen y lo movemos hacia la carpeta principal con el fin de facilitar el trabajo

mv rna.fna ND1_Felidae.fna # Cambiamos de nombre para mejor identificacion

grep ">"  IRBP_Felidae.fna | wc -l # Contamos el número de especies

cd ../

# Gen: IRBP  Familia: Felidae 

mkdir IRBP_Felidae

./datasets download gene symbol IRBP --ortholog Felidae --filename IRBP_Felidae.zip

mv IRBP_Felidae.zip IRBP_Felidae/

unzip *

mv ncbi_dataset/data/rna.fna .

mv rna.fna IRBP_Felidae.fna

grep ">"  IRBP_Felidae.fna | wc -l # 48 especies

cd ../


# Gen: FGB  Genero: Felidae

mkdir FGB_Felidae

./datasets download gene symbol FGB --ortholog Felidae --filename FGB_Felidae.zip

mv FGB_Felidae.zip FGB_Felidae/

unzip *

mv ncbi_dataset/data/rna.fna .

mv rna.fna FGB_Felidae.fna

grep ">"  FGB_Felidae.fna | wc -l 

cd ../


# Gen: COX1  Genero: Felidae

mkdir COX1_Felidae

./datasets download gene symbol COX1 --ortholog Felidae --filename COX1_Felidae.zip

mv COX1_Felidae.zip COX1_Felidae/

unzip *

mv ncbi_dataset/data/rna.fna .

mv rna.fna COX1_Felidae.fna

grep ">"  COX1_Felidae.fna | wc -l 

cd ../


# MUSCLE

# FGB_Felidae

cd FGB_Felidae/

mkdir MUSCLE # Creamos una carpeta donde vamos a realizar el aliniamiento MUSCLE

mv FGB_Felidae.fna MUSCLE/ # Movemos el archivo *.fna a MUSCLE/

cd MUSCLE/

cp ../../muscle3.8.31_i86linux64 ./ # Copiamos del directorio principal el programa de MUSCLE

./muscle3.8.31_i86linux64 -in *.fna -out muscle_FGB_Felidae.fna -maxiters 1 -diags # Usamos este código para obtener el alineamento

cd ../../


# IRBP_Felidae

cd IRBP_Felidae/

mkdir MUSCLE

mv IRBP_Felidae.fna MUSCLE/

cd MUSCLE/

cp ../../muscle3.8.31_i86linux64 ./

./muscle3.8.31_i86linux64 -in *.fna -out muscle_IRBP_Felidae.fna -maxiters 1 -diags

cd ../../


# COX1_Felidae

cd COX1_Felidae/

mkdir MUSCLE

mv COX1_Felidae.fna MUSCLE/

cd MUSCLE/

cp ../../muscle3.8.31_i86linux64 ./

./muscle3.8.31_i86linux64 -in *.fna -out muscle_COX1_Felidae.fna -maxiters 1 -diags

cd ../../


# ND1_Felidae

cd ND1_Felidae/

mkdir MUSCLE

mv ND1_Felidae.fna MUSCLE/

cd MUSCLE/

cp ../../muscle3.8.31_i86linux64 ./

./muscle3.8.31_i86linux64 -in *.fna -out muscle_ND1_Felidae.fna -maxiters 1 -diags

cd ../../

# Se debe editar los documentos muscle_*.fna para poder continuar con este paso (ATOM Editor)


cd EDITED/ # En la carpeta EDITED/ estan los archivos alineamos editados.

mv muscle_COX1_Felidae_edited.fna ../COX1_Felidae/

mv muscle_FGB_Felidae_edited.fna ../FGB_Felidae/

mv muscle_ND1_Felidae_edited.fna ../ND1_Felidae/

mv muscle_IRBP_Felidae_edited.fna ../IRBP_Felidae/

cd ../


# IQTREE


# COX1_Felidae/

cd COX1_Felidae/

mkdir IQTREE 

mv muscle_COX1_Felidae_edited.fna IQTREE/

cd IQTREE/

module load iqtree/2.2.2.6 # Agregar el modulo para IQTREE

iqtree -s muscle_COX1_Felidae_edited.fna

mkdir ../TREE

mv *.treefile ../TREE/

cd ../../


# FGB_Felidae/

cd FGB_Felidae/

mv muscle_FGB_Felidae_edited.fna IQTREE/

cd IQTREE/

module load iqtree/2.2.2.6

iqtree -s muscle_FGB_Felidae_edited.fna

cd ../../


# IRBP_Felidae/

cd IRBP_Felidae/

mkdir IQTREE

mv muscle_IRBP_Felidae_edited.fna IQTREE/

cd IQTREE/

module load iqtree/2.2.2.6

iqtree -s muscle_IRBP_Felidae_edited.fna

cd ../../


# ND1_Felidae

cd ND1_Felidae

mkdir IQTREE

mv muscle_ND1_Felidae_edited.fna IQTREE/

module load iqtree/2.2.2.6

iqtree -s muscle_ND1_Felidae_edited.fna

cd ../../


# Para finalizar realizaremos la última carpeta 

mkdir FINALTREE # Aqui copiarmos todos los archivos *.treefile como esta abajo

cp COX1_Felidae/TREE/muscle_COX1_Felidae_edited.fna.treefile FINALTREE/

cp FGB_Felidae/IQTREE/muscle_FGB_Felidae_edited.fna.treefile FINALTREE/

cp IRBP_Felidae/IQTREE/muscle_IRBP_Felidae_edited.fna.treefile FINALTREE/

cp ND1_Felidae/IQTREE/muscle_ND1_Felidae_edited.fna.treefile FINALTREE/

cd FINALTREE/

cat * > All.Genes.Felidae.treefile # Concatenamos todos los archivos en un único

# Fin del código 


