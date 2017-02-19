#!/bin/bash
# Generate new resume on the go

COMMIT_MSG=""

for var in "$@"
do
    COMMIT_MSG+=$var
    COMMIT_MSG+=" "
done

echo "\033[0;32m Jekyll building....\n \033[0m"

# Remove this file otherwise it will overwrite generated index.html file
rm index.html

jekyll build

echo "\n\n"

# Update
echo "\033[0;32m Updating resume ..\n \033[0m"

cp _site/index.html index.html

git add index.md publish.sh README.md index.html media/*

git commit -m "$COMMIT_MSG"

if [ $? -eq 0 ]; then
    git push origin master
    git push origin master:gh-pages -f
else
    echo -e "\033[1;31m No changes made to the resume \033[0m"
fi

echo "\n\n"
