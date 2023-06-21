# Dev2Cloud GitBook Theme

This will be used to define the standard Dev2Cloud theme. Should be usable by Honkit as well

## Requirements

The `build.sh` script uses the following NPM plugins to perform the build

* Browserify - https://browserify.org/#install
  ```
  npm install -g browserify
  ```
* Uglify - https://www.npmjs.com/package/uglify-js
  ```
  npm install uglify-js -g
  ```
* Lessc - https://lesscss.org/usage/
  ```
  npm install less -g
  ```
* Lessc clean-css plugin - https://github.com/less/less-plugin-clean-css  
  Note: This is now a separate dependency
  ```
  npm install -g less-plugin-clean-css
  ```

## Building

1. Install Node dependencies defined in package.json
   ```
   npm install
   ```
1. Run the build script
   ```
   ./build.sh
   ```