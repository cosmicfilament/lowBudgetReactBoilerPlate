#!/bin/bash

# I assume that you are in the ReactTemplate subdirectory
cd ../
npx create-react-app $1
cd $1
# remove all of the files that were created by cra except for the node_modules stuff
rm -f .gitignore
rm -rf public
rm -rf src
# copy my replacement files into public and src
cp -r ../ReactTemplate/* .
# add a few new packages that are required for styled-components
npm i -D babel-plugin-styled-components react-app-rewired customize-cra typescript
npm i babel-plugin-macros react-app-rewire-styled-components styled-components 
echo "\n*****"
echo "Clean the test files out of package.json."
echo "then add to package.json the code that is in package.json.add."
echo "then rerun npm install to remove the test packages from node_modules"
echo "*****"
# start vscode in the new project directory
code .


 