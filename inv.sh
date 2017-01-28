DIR=$HOME/.inv-cli
cp -i $DIR/gitignore .gitignore
cp -i $DIR/eslintignore .eslintignore
cp -i $DIR/eslintrc .eslintrc
cp -i $DIR/scripts.json package.json
mkdir -p test
npm install -D tape tap-spec eslint eslint-config-invintus dependency-check
