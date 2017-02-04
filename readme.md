# min-cli

A template for js repos. It creates files, installs dev dependencies, and creates the `scripts` field in package.json.


## install 

    $ npm install -g min-cli


## use

    $ min my-folder


```
.
├── test/
├── .eslintignore
├── .eslintrc
├── .gitignore
└── package.json
```

```js
{
  "scripts": {
    "preversion": "npm run lint && npm run deps && npm test",
    "postversion": "git push && git push --tags",
    "lint": "eslint .",
    "deps": "dependency-check package.json && dependency-check package.json --unused --entry test/*.js -i dependency-check -i eslint -i eslint-config-minlint -i tap-spec",
    "test": "tape test/*.js | tap-spec"
  }
}
```
