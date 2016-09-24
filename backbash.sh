#!/bin/sh

b_rc=.bashrc
b_profile=.bash_profile
b_history=.bash_history
git_config=.gitconfig
py_history=.python_history 

current_time=$(date "+%Y.%m.%d-%H.%M.%S")
echo "Current Time : $current_time"
 
new_b_rc=$b_rc.$current_time
new_b_profile=$b_profile.$current_time
new_b_history=$b_history.$current_time
new_git_config=$git_config.$current_time
new_py_history=$py_history.$current_time

echo "New .bash_rc backup: " "$new_b_rc"
echo "New .bash_profile backup: " "$new_b_profile"
echo "New .bash_history backup: " "$new_b_history"
echo "New .gitconfig backup: " "$new_git_config"
echo "New .python_history backup: " "$new_py_history"

cp $b_rc $new_b_rc
cp $b_profile $new_b_profile
cp $b_history $new_b_history
cp $git_config $new_git_config
cp $py_history $new_py_history

echo "Backbash is completed. You may check the new files..."
mv $new_b_rc $HOME/.backbash/
mv $new_b_profile $HOME/.backbash/
mv $new_b_history $HOME/.backbash/
mv $new_git_config $HOME/.backbash/
mv $new_py_history $HOME/.backbash/
