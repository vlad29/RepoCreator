#!/bin/bash
# Creator of Repos
#EG: INITIAL_ROOT=/home/username/repositories
INITIAL_ROOT=
#EG: REPOSERVER=serverpath.com
REPOSERVER=
#EG: REPOUSER=username
REPOUSER=

echo 'Write the name of the new repo:'
read REPONAME

if [[ -z "$REPONAME" ]];
then
let REPONAME=$(date "+%Y%m%d%H%M%S")
fi

REPONAME="$REPONAME.git"

cd $INITIAL_ROOT
mkdir ./$REPONAME
cd ./$REPONAME/
git init --bare > /dev/null




if [[ "$1" != "--no-verbose" ]];
then
echo "__________________________________________________________"
echo ""
echo "                    $REPONAME                      "
echo "__________________________________________________________"
echo "__________________EMPTY__PROJECT__________________________"
echo " cd my_project"
echo " git init"
echo " git add *"
echo " git commit -m \"My initial commit message\" "
echo " git remote add origin ssh://$REPOUSER@$REPOSERVER$INITIAL_ROOT/$REPONAME" 
echo " git push -u origin master"
echo "__________________________________________________________"
echo "________________CLONE__PROJECT____________________________"
echo "git clone ssh://$REPOUSER@$REPOSERVER$INITIAL_ROOT/$REPONAME" 
fi

exit 0