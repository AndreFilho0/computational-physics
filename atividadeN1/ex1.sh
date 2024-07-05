#!/bin/bash
echo "Qual a pasta que será usada? (ATENÇÃO: você deve passar o caminho relativo ao diretório atual)"    # printar na tela mensagem para o user colocar a pasta
read pasta   # armazenar a pasta 


if [ ! -d "$pasta" ]; then      #ver se esse pasta existe 
    echo "A pasta especificada não existe. obs que tem que ser o caminho relativo de onde vc está executando o codigo meu amigo!"
    exit 1
fi


QtsArquivos=$(ls "$pasta" | wc -l)   #contar o número de arquivos que tem na pasta 
if [ $QtsArquivos -eq 0 ]; then      #ver se não tem arquivo na pasta 
    echo "Não há arquivos nesta pasta. Execute novamente e especifique uma pasta com arquivos."
    exit 1
fi


cd "$pasta" || exit    #ir para a pasta que o user mandou para nos 


contador=1
conteudoDentroDosArquivos=""    #variavel que vai armazenar os dados da primeira linha de cada arquivo 


for arquivo in *; do      # fazer uma serie de operações em cada arquivo dentro da pasta 
    if [ -f "$arquivo" ]; then
     
        primeira_linha=$(head -n 1 "$arquivo")   #pega a primeira linha do arquivo
        
        conteudoDentroDosArquivos+="\n$primeira_linha\n" #armazena ela aqui
        echo $primeira_linha    #só mostra para o user o que tem na linha
        novo_nome="ARQUIVO$contador.txt"  
        mv "$arquivo" "$novo_nome"    #muda o nome do arquivo
        
        contador=$((contador + 1))
    fi
done


echo -e "$conteudoDentroDosArquivos" > Arquivo-Cabeçalho.txt

echo "O conteúdo da primeira linha de cada arquivo foi salvo em Arquivo-Cabeçalho.txt."
