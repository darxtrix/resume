# Push to gh-pases on the go
rm ./index.html

# Generate new resume
echo -e "\x1B[0;32m Jekyll building....\n \x1b[m"

jekyll build

cp _site/index.html ./index.html

# Update gh-pages
echo -e "\x1B[0;32m Updating resume on gh-pages ..\n \x1b[m"

git add index.html media/*

git commit -m "Updating the resume :wink:"

if [$? -eq 0]; then
    git push origin gh-pages
else
    echo "No changes made to the resume."
fi

# Update master
echo -e "\x1B[0;32m Updating resume template on master ..\n \x1b[m"

git add index.md publish.sh README.md

git commit -m "Updating the resume template"

if [$? -eq 0]; then
    git push origin master
else
    echo "No changes made to the resume template."
fi


