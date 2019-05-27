#!/bin/bash
echo "##################################################################"
echo "IMPRIMINDO A DATA E HORARIO"
echo "Data e Horário:"
date #data



echo "##################################################################"
echo "IMPRIMINDO ESPAÇO LIVRE E OCUPADO DO HD"
df -h #espaco livre e ocupado do HD


echo "##################################################################"
echo "IMPRIMINDO ESPAÇO LIVRE E OCUPADO DA MEMORIA"
free -m -h #espaco livre e ocupado da memoria

echo "##################################################################"
echo "IMPRIMINDO ARQUIVOS DA PASTA DOWNLOADS"
ls /home/brunoclaudino/Downloads


echo "##################################################################"
echo "IMPRESSÃO DA MENSAGEM ALEATÓRIAMENTE"
echo	
cont=0
while read LINHA;
do
	let cont++
done < frases.txt
valor=$(($RANDOM % $cont+1))
cont=0
while read LINHA;
do
	if [ "$valor" == "$cont" ]
	then
		echo -e $LINHA && break
	fi
	let cont++
done < frases.txt
echo
echo "##################################################################"
echo "IMPRIMINDO"
echo "o número de imagens, videos e arquivos de música na pasta home
do usuário" 
ls -l /home/brunoclaudino/
echo "##################################################################"
echo "FIM"
echo "##################################################################"
