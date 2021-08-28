cd ~/Área\ de\ Trabalho/
BASEDIR="$(pwd)"

function counter(){
  if ((${#BASEDIR}<255))
  then
    echo "Menor que ${#BASEDIR} caracteres"

    mkdir -p Teste
    cd Teste
    BASEDIR="$(pwd)"
    echo ${#BASEDIR}
    counter
  fi
}

counter
cd ~/Área\ de\ Trabalho/
echo $BASEDIR >Teste.txt
echo $BASEDIR
