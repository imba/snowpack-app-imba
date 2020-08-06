# Imba 2 + Snowpack App Template
<img src="https://raw.githubusercontent.com/imba/template-snowpack/master/static/imba-snowpack-social-preview-1280x640.png?token=ADHTGL2XTONCPV33Z33WQ727FRLI2"></a>

This project will get you up and running with Imba 2 bundled by snowpack.

## Installation

### Clone Repository
```
git clone https://github.com/imba/template-snowpack foldername
cd foldername
```
### Install dependencies

```
npm install
```
or
```
yarn
```

### Run Development Server
```
npm run start
```
or
```
yarn start
```
### Production Build
To create production build
```
npm run build
```
or
```
yarn build

```
## Add NPM Packages
If you need to install any NPM packages, add the name to the install script in the `package.json` file. Then run `npm install` or `yarn` once again.

For example
```
"install": [
  "cowsay"
],
```

## Default Build Output
By default,
- The build goes to a folder named `/public` at the root of your project folder.
- The `/src` folder containing imba code is built into the `public/dist` directory
- The `/static` folder containing your index.html and other files such as images is built at the root of the `/public/` folder by default.

Your public folder will look like this:
```
/public
    /dist
        app-root.js
    favicon.ico
    index.html
```
The app-root.js is referenced from the body of the `index.html`.
```imba
<script type="module" src="./dist/app-root.js"></script>
```

## Configure Build Output
You may modify your build directories in the `package.json` file.
```json
{
  "scripts": {
    "..."
  },
  "snowpack": {
    "mount": {
      "src": "/dist",
      "static": "/"
    },
    "devOptions": {
      "out": "public",
      "..."
    },
    "..."
  }
}

```

### Build Folder name
If you need your output build directory to be named `/build` you may remove the `"out": "public"` option since snowpack will build to the `/build` directory by default.

### Source Folder Names 
If you would like to rename your `src` and `static` folders in your project, update the `"src"` and `"static"` strings in the package.json file to match your new folder names.

### Build Output Directories
If you would like to change the output location of your code `"src": "/dist"` and `"static": "/"` folders, you may change the value for example to `"src": "/app"` and `"static": "/static"`. 

### Don't forget
Update the app-root.js reference in your index.html in your `/static` folder to the correct directory. In the above case we would change the reference from `./dist/app-root.js` to `./app/app-root.js`.

> Note that the imba files, cannot be currently be compiled to the root of the build directory `"src": "/"`, so you must always specify a sub-directory for your compiled Imba code as `"src": "/foldername"`.

For more snowpack configuration options checkout the [snowpack documentation](https://www.snowpack.dev/#all-config-options).

# Happy Coding!
