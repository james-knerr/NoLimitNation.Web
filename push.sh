    #!/bin/sh

    echo "~~~ Setting User Info"
    git config --global user.email "travis@travis-ci.org"
    git config --global user.name "Travis CI"


    echo "~~~ Checking Master Out"
    #   git checkout -b gh-pages
    git checkout master -b

    echo "~~~ Adding dist content"
    git add dist/ *

    echo "~~~ Committing dist content"
    git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"


    echo "~~~ Adding remote originn https://${GH_TOKEN}@github.com/NoLimitNation/Web.Build.git"
    git remote add origin https://${GH_TOKEN}@github.com/NoLimitNation/Web.Build.git # >  /dev/null 2>&1

    echo "~~~ Pushing Master to origin"
    git push origin master

    echo "~~~ Complete ~~~"
    #   git push --quiet --set-upstream origin-pages gh-pages 


