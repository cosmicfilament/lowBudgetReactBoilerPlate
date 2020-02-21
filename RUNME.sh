#!/bin/bash

cd ../
npx create-react-app $1
cd $1

rm -f .gitignore
rm -rf public
rm -rf src

cp -r ../ReactTemplate/* .

npm i -D babel-plugin-styled-components react-app-rewired customize-cra typescript
npm i babel-plugin-macros react-app-rewire-styled-components styled-components 
echo "\n*****"
echo "Clean the test files out of package.json."
echo "then add to package.json the code that is in package.json.add."
echo "then rerun npm install to remove the test packages from node_modules"
echo "*****"

code .


 