rmarkdown::render_site()

# commit to gh-pages
git add .
git commit -m "viesti"
git push origin master
git subtree push --prefix _site/ origin gh-pages

# push to muuankarski.org
rsync -arv /home/aurelius/btsync/kela/rkurssi/_site/ vadelma_web@muuankarski.org:var/www/html/rkurssi/