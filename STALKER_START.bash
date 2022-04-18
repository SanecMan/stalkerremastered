#!/bin/bash
# GNU bash, version 4.4.20

echo "Скачиваю последнее обновление";
d=$(dirname $0)
bash ${d}/STALKER_UPDATE.bash;
echo "Компилим";
sudo DreamMaker stalker.dme;
echo "Поднимаем";
sudo DreamDaemon stalker.dmb 2013 -trusted -logself &;
echo "Сталкер поднят на 2013 порту, энжой.";
