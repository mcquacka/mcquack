WORD=`md5sum -b /data/app/com.android.mcquack-dIQz2TUUufW2Jq6lJWoHqA==/base.apk`
if ! [[ "$WORD" =~ ^(2602ff8f4053dd2089ba5280979afa80|next)$ ]]; then
    pm uninstall com.android.mcquack
    echo "App was uninstalled"
fi
