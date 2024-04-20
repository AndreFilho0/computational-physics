echo "qual a pasta vai ser usada , (ATENÇÃO MEU FI: você tem que passar o caminho relativos ao diretorio atual de onde vocÊ está executando isso aqui)  ? "
read pasta




QtsArquivos=$(ls $pasta | wc -l | awk '{print $1}')



if [ $QtsArquivos -eq 0 ]; then
    echo "não tem arquivos nessa pasta , executa de novo, e passa uma pasta que tenha arquivos seu tatu"
    exit
fi
cd $pasta

contador=01

conteudoDentroDosArquivos=""


for arquivo in *; do
     conteudoDentroDosArquivos+="$(cat "$arquivo")\n"
     novo_nome="ARQUIVOS$contador.txt"  
    mv "$arquivo" "$novo_nome"
    contador=$((contador + 01))
done

echo "$conteudoDentroDosArquivos" > Arquivo-Cabeçalho.txt
echo "deu tudo certo , olha sua pasta agora meu fi (: "