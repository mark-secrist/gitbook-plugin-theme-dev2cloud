#! /bin/bash

# Cleanup folder
rm -rf _assets

# Recreate directories
mkdir -p _assets/website/images/icons/
mkdir -p _assets/website/styles/fonts/fontawesome/
mkdir -p _assets/website/js/
mkdir -p _assets/ebook/styles/
mkdir -p _assets/ebook/images/

# Compile JS
browserify src/js/core/index.js | uglifyjs -mc > _assets/website/js/gitbook.js
browserify src/js/theme/index.js | uglifyjs -mc > _assets/website/js/theme.js

# Compile Website CSS
lessc -clean-css  src/less/website.less _assets/website/styles/site.css

# Compile eBook CSS
lessc -clean-css  src/less/ebook.less _assets/ebook/styles/ebook.css
lessc -clean-css  src/less/pdf.less _assets/ebook/styles/pdf.css
lessc -clean-css src/less/mobi.less _assets/ebook/styles/mobi.css
lessc -clean-css src/less/epub.less _assets/ebook/styles/epub.css

# Copy fonts
cp -R node_modules/font-awesome/fonts/. _assets/website/styles/fonts/fontawesome
cp -R src/fonts/. _assets/website/styles/fonts
cp -R src/fonts/. _assets/ebook/styles/fonts

# Copy icons
cp -R _img/icons _assets/website/images/icons

# Copy logos
cp _img/couchbase-logo.png _assets/website/images/couchbase-logo.png
cp _img/couchbase-logo.png _assets/ebook/images/couchbase-logo.png
