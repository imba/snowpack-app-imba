<img height="100" src="https://github.com/imba/brand/blob/master/imba-web-logo.png"></a> 
<img height="100" src="https://avatars1.githubusercontent.com/u/44914786?s=200&v=4"></a>
# Imba 2 + Snowpack App Template

### Create project directory
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
To build your project for production run
```
npm run build
```
or
```
yarn build
```
Upon build, you will see the following output
```
/public
    /dist
        app-root.js
    favicon.ico
    index.html
```
The app-root.js is referenced from the body of the index.html.
```imba
<script type="module" src="./dist/app-root.js"></script>
```

## Change settings
You may modify your build directories in the package.json file.

By default,
- The build goes to a folder named `/public` at the root of your project folder.
- The `/src` folder containing imba code is built into the `public/dist` directory
- The `/static` folder containing your index.html and other files such as images is built at the root of the `/public/` directory by default.


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

> Note that the imba files, cannot be currently be compiled to the root of the build directory `"src": "/"`, so you must always specify a subdirectory for your compiled Imba code as `"src": "/foldername"`, and then update the reference in your index.html to match: `<script type="module" src="./foldername/app-root.js"></script>`.

> If you need your output build directory to be named `/build` you may remove the `"out": "public"` option since snowpack will build to the `/build` directory by default.

For more snowpack configuration options checkout the [snowpack documentation](https://www.snowpack.dev/#all-config-options).

### Happy Coding!
