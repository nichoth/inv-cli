if [ -z "$1" ]
    then
        echo "Usage: min <dir>"
        exit 1
fi
DIR=$HOME/.min-cli
DEST=$1
mkdir -p $DEST && \
cd $DEST && \
cp -i $DIR/gitignore .gitignore
cp -i $DIR/eslintignore .eslintignore
cp -i $DIR/eslintrc .eslintrc
cp -i $DIR/scripts.json package.json
mkdir -p test
npm install -D tape tap-spec eslint eslint-config-minlint dependency-check

