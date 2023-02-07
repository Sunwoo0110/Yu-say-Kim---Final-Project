#!/bin/bash

repo_url=$1
repo_name=`echo \$repo_url | cut -d '/' -f5`
repo_name=`echo \$repo_name | cut -d '.' -f1`
echo "$repo_name"

ls
git clone https://$2:$4@github.com/$2/$repo_name.git

# ls
# cd ..
# # cd $repo_name
# ls
# cd workflow
# ls
# chmod +x make_package_dot_json.sh make_src_directory.sh make_appserver.sh make_config.sh make_routes.sh make_env_sample.sh make_gitignore.sh
# ./make_package_dot_json.sh $repo_name $repo_url
# ./make_src_directory.sh $repo_name
# ./make_appserver.sh $repo_name
# ./make_config.sh $repo_name
# ./make_routes.sh $repo_name
# ./make_env_sample.sh $repo_name
# ./make_gitignore.sh $repo_name

# cd ..
ls
cd src
chmod +x make_package_dot_json.sh make_src_directory.sh make_appserver.sh make_config.sh make_routes.sh make_env_sample.sh make_gitignore.sh
./make_package_dot_json.sh $repo_name $repo_url
./make_src_directory.sh $repo_name
./make_appserver.sh $repo_name
./make_config.sh $repo_name
./make_routes.sh $repo_name
./make_env_sample.sh $repo_name
./make_gitignore.sh $repo_name

cd $repo_name

cd ..
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd github
ls

git config --global user.name $2
git config --global user.name 
git config --global user.email $3
git config --global user.email

git add .
git commit -m "init"
git push
