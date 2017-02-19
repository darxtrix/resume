# Push to gh-pases on the go
rm ./index.html

# Generate new resume

jekyll build

cp _site/index.html ./index.html

# Update gh-pages

git add index.html media/*

git commit -m "Updating the resume :wink:"

git push origin gh-pages

# Update master

git add index.md publish.sh README.md

git commit -m "Updating the resume template"

git push origin master

