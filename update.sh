rm -rf google_appengine
API_CHECK=https://appengine.google.com/api/updatecheck
SDK_VERSION=$(curl -s $API_CHECK | awk -F '\"' '/release/ {print $2}')
SDK_URL=https://storage.googleapis.com/appengine-sdks/featured/google_appengine_$SDK_VERSION.zip
wget $SDK_URL -nv
unzip -q google_appengine_$SDK_VERSION.zip
rm -rf google_appengine_$SDK_VERSION.zip
