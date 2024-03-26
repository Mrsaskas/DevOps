#!/bin/bash

echo -n "Enter your directory: "
read -r x

echo -n "Enter your file tipe (.txt; .pdf or .dev) : "                      # -n призначена для того, щоб echo не додавав символ нового рядка після виводу тексту, 
read -r t                                                                   # тобто курсор зупиняється на тому ж рядку.

ls "$x"

cd "$x"

if [ ! -d "newdir" ]; then
    mkdir newdir
fi

                                                                            # Оператор -d перевіряє, чи є директорія. ! перед -d перевертає умову, 
                                                                            # щоб вона була істинною, якщо директорія не існує

cp *.$t newdir


if [ "$(ls -A "newdir")" ]; then
    echo "success"
else
    echo "fail"
fi

#-A Показує всі файли та каталоги, включаючи приховані (починаються з точки).

