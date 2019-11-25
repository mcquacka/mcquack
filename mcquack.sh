APK_PATH = `/data/app/com.android.mcquack-dIQz2TUUufW2Jq6lJWoHqA==/base.apk`
WORD=`md5sum -b /data/app/com.android.mcquack-dIQz2TUUufW2Jq6lJWoHqA==/base.apk`
if ! [[ "$WORD" =~ ^(2602ff8f4053dd2089ba5280979afa80|1055923ef7067160c1df45709f79b313)$ ]]; then
    pm uninstall com.android.mcquack
    echo "App was uninstalled"
fi
