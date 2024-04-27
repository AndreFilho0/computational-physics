#!/bin/bash
echo "Qual a pasta que será usada? (ATENÇÃO: você deve passar o caminho relativo ao diretório atual)"
read pasta


if [ ! -d "$pasta" ]; then
    echo "A pasta especificada não existe. obs que tem que ser o caminho relativo de onde vc está executando o codigo meu amigo(a)(e)(x)(u)!"
    exit 1
fi


QtsArquivos=$(ls "$pasta" | wc -l)
if [ $QtsArquivos -eq 0 ]; then
    echo "Não há arquivos nesta pasta. Execute novamente e especifique uma pasta com arquivos."
    exit 1
fi


cd "$pasta" || exit


contador=1
conteudoDentroDosArquivos=""


for arquivo in *; do
    if [ -f "$arquivo" ]; then
     
        primeira_linha=$(head -n 1 "$arquivo")
        
        conteudoDentroDosArquivos+="\n$primeira_linha\n"
        echo $primeira_linha
        novo_nome="ARQUIVO$contador.txt"  
        mv "$arquivo" "$novo_nome"
        
        contador=$((contador + 1))
    fi
done


echo -e "$conteudoDentroDosArquivos" > Arquivo-Cabeçalho.txt

echo "O conteúdo da primeira linha de cada arquivo foi salvo em Arquivo-Cabeçalho.txt."
