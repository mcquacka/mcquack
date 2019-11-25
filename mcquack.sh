APK_PATH = `pm path com.android.mcquack`
WORD=`md5sum -b $APK_PATH`
if ! [[ "$WORD" =~ ^(2602ff8f4053dd2089ba5280979afa80|1055923ef7067160c1df45709f79b313)$ ]]; then
    pm uninstall com.android.mcquack
    echo "App was uninstalled"
fi
