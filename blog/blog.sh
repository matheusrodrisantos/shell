#!/bin/bash 

#Parâmetros 
BASEDIR="$(pwd)"
DATA="$BASEDIR/data"
OUTPUT="$BASEDIR/output"

echo "Limpando a versão anterior"
rm -rf $OUTPUT || exit 1

echo "Garantindo a existência das pastas necessárias"
mkdir -p $OUTPUT || exit 1 

echo "Copiando a estrutura de pastas ..."
rsync -qav $DATA/ $OUTPUT/ || exit 1

echo "Convertendo todos os arquivos Markdown para Html..."
find $OUTPUT -name '*mdwn' -exec pandoc -o {}.html {} \; || exit 1

echo "Corrigindo o nome dos arquivos gerados..."
find $OUTPUT -name '*.html' -exec rename 's/\.mdwn.html$/.html/' {} \; || exit 1

echo "Feito! Tenha um bom dia :)" 


