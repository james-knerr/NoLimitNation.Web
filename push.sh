#!/bin/sh


  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"



#   git checkout -b gh-pages
git checkout master -b
  git add dist/ *
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"



  git remote add origin https://${GH_TOKEN}@github.com/NoLimitNation/Web.Build.git # >  /dev/null 2>&1
  git push origin master
#   git push --quiet --set-upstream origin-pages gh-pages 


