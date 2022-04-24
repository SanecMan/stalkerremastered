#!/bin/bash
# GNU bash, version 4.4.20

d=$(dirname $0)
bash ${d}/STALKER_UPDATE.bash;
echo "Сжимаем";
sudo zip KUKAEBAKA.zip ${d}/stalker.rsc;
echo "Переносим";
sudo mv ${d}/KUKAEBAKA.zip ${d}/preload
