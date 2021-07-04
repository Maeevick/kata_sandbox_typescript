echo "-----------------------------"
echo "Welcome in migration script
to fork boilerplate directly
on your remote repository"
echo "-----------------------------"
echo "current remotes are :"
git remote -v
echo "-----------------------------"
while true; do
    read -p "do you wish to perform migration ? 
(yes to proceed / anything else to exit)
" yn
    case $yn in
        yes ) echo "Processing..."; break;;
        * ) echo "Fine, Byebye!"; exit;;
    esac
done
echo "-----------------------------"
read -p "what's the url of the target remote ?
(exemple : git@github.com:user/repo.git)
/!\ if not created go create it, I will be waiting... 
" path
git remote set-url origin $path
echo "current remotes are :"
git remote -v
echo "-----------------------------"
commit_count=$(git rev-list --count HEAD 2>&1)
git reset HEAD~$(($commit_count-1))
rm ./CODEOWNERS
git add .
git commit --amend
git push
