CURSOR_URL="https://www.cursor.com/api/download?platform=linux-x64&releaseTrack=stable"

sudo apt update

sudo apt install -y curl jq

CURSOR_APP_URL=$(curl "https://www.cursor.com/api/download?platform=linux-x64&releaseTrack=stable"| jq .downloadUrl | tr -d '"')

curl -L $CURSOR_APP_URL -o cursor.appimage

chmod +x cursor.appimage

sudo mv cursor.appimage /opt
