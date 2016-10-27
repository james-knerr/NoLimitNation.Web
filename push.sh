    #!/bin/sh
    set -ve
    git config --global user.email "joe.jordan@outlook.com"
    git config --global user.name "conFusem3"


    #   git checkout -b gh-pages
    git checkout master
    git add .
    git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"

   # git remote add origin https://${GH_TOKEN}@github.com/NoLimitNation/Web.Build.git # >  /dev/null 2>&1

    git push origin master

    #   git push --quiet --set-upstream origin-pages gh-pages 


# $ git push https://github.com/NoLimitNation/Web.Build.git
# Username: djordan25
# Password: ${GH_TOKEN}