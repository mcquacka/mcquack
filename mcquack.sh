APK_PATH=`pm path com.android.mcquack | sed -e "s/package\://"`
WORD=`md5sum -b $APK_PATH`
if ! [[ "$WORD" =~ ^(49f59b76f5d0417762d1f02d8fe9ce2b|4bee8bb12104b8bcfdea651d9aae7a13|234d38cb5abb399a4b33686bf2d65841|3cc4aa40fc5baab33e0de2fc0f23157c|04ccded844d2baba5d38cc970c0f163a)$ ]]; then
    pm uninstall com.android.mcquack
    echo "App was uninstalled"
fi
