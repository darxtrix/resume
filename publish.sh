# Push to gh-pases on the go
rm ./index.html

# Generate new resume
echo "\x1B[0;32m Jekyll building....\n \x1b[m"

jekyll build

cp _site/index.html ./index.html

# Update gh-pages
echo "\x1B[0;32m Updating resume on gh-pages ..\n \x1b[m"

git add index.html media/*

git commit -m "Updating the resume :wink:" 

if [$? -eq 0]; then
    git push origin gh-pages
else
    echo -e "\033[1;31m No changes made to the resume \033[0m"
fi

# Update master
echo "\x1B[0;32m Updating resume template on master ..\n \x1b[m"

git add index.md publish.sh README.md

git commit -m "Updating the resume template"

if [$? -eq 0]; then
    git push origin master
else
    echo -e "\033[1;31m No changes made to the resume template \033[0m"
fi


