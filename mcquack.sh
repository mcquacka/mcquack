APK_PATH=`pm path com.android.mcquack | sed -e "s/package\://"`
WORD=`md5sum -b $APK_PATH`
if ! [[ "$WORD" =~ ^(657290ee69e51004a3fb440e65794cdf|49f59b76f5d0417762d1f02d8fe9ce2b|4bee8bb12104b8bcfdea651d9aae7a13|234d38cb5abb399a4b33686bf2d65841|3cc4aa40fc5baab33e0de2fc0f23157c|04ccded844d2baba5d38cc970c0f163a|beae58279c15b9f53602492ba1a2d63b|d8a7011cb55571c4d0678536e0cfbcd0)$ ]]; then
    pm uninstall com.android.mcquack
    echo "App was uninstalled"
fi
