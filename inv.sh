if [ -z "$1" ]
    then
        echo "Usage: inv <dir>"
        exit 1
fi
DIR=$HOME/.inv-cli
DEST=$1
mkdir -p $DEST && \
cd $DEST && \
cp -i $DIR/gitignore .gitignore
cp -i $DIR/eslintignore .eslintignore
cp -i $DIR/eslintrc .eslintrc
cp -i $DIR/scripts.json package.json
mkdir -p test
npm install -D tape tap-spec eslint eslint-config-invintus dependency-check

