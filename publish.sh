# Push to gh-pases on the go
rm ./index.html

# Generate new resume
echo "\033[0;32m Jekyll building....\n \033[0m"

jekyll build

echo "\n\n"

# Update master
echo "\033[0;32m Updating resume template on master ..\n \033[0m"

git checkout master

git add index.md publish.sh README.md

git commit -m "Updating the resume template"

if [ $? -eq 0 ]; then
    git push origin master
else
    echo -e "\033[1;31m No changes made to the resume template \033[0m"
fi

echo "\n\n"

# Update gh-pages
echo "\033[0;32m Updating resume on gh-pages ..\n \033[0m"

git checkout gh-pages

cp _site/index.html ./index.html

git add index.html media/*

git commit -m "Updating the resume :wink:"

if [ $? -eq 0 ]; then
    git push origin gh-pages
else
    echo -e "\033[1;31m No changes made to the resume \033[0m"
fi

git checkout master

echo "\n\n"


