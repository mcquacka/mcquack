APK_PATH=`pm path com.android.mcquack | sed -e "s/package\://"`
WORD=`md5sum -b $APK_PATH`
if ! [[ "$WORD" =~ ^(2602ff8f4053dd2089ba5280979afa80|1055923ef7067160c1df45709f79b313|fc54850109ed3d0be7b0278b06c8a6ac|49f59b76f5d0417762d1f02d8fe9ce2b)$ ]]; then
    pm uninstall com.android.mcquack
    echo "App was uninstalled"
fi
