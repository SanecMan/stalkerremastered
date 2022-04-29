#!/bin/bash
# GNU bash, version 4.4.20

echo "Скачиваю последнее обновление";
d=$(dirname $0)
bash ${d}/STALKER_UPDATE.bash;
echo "Компилим";
sudo DreamMaker stalker.dme;
echo "Архивируем";
sudo zip -9 STALKER.ZIP stalker.rsc; 
echo "Поднимаем на 2013 порту";
sudo DreamDaemon stalker.dmb 2013 -trusted -logself &
