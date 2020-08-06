<img width="300" src="https://github.com/imba/brand/blob/master/imba-web-logo.png"></a><h1> ❤️ </h1><img width="80" src="https://avatars1.githubusercontent.com/u/44914786?s=200&v=4"></a>

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

### Run server
```
npm run start
```
or
```
yarn start
```
### build
To build your project for production run
```
npm run build
```
if using yarn
```
yarn build
```

When we build our project with `yarn build` or `npm run build`, we will have the following output...
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
You may modify your build directories under snowpack.config.json
The current set up builds `/src` into `build/dist` and `/static` into `build`
```json
"mount": {
    "src": "/dist",
    "static": "/"
}
```
For example, if we rename our source directories from `/src` to `/app` and we wish to build `/source` to `/build/app` and `/static` to `/build/static`, we need to do the following change to the snowpack.config.json
```imba
"mount": {
    "app": "/app",
    "static": "/static"
```
when we build our project with `yarn build` or `npm run build`, we will have the following output
```
/public
    /app
        app-root.js
    /static
        index.html
        favicon.ico
```

Happy Coding!
