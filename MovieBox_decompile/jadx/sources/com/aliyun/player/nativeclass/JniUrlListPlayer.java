package com.aliyun.player.nativeclass;

import android.content.Context;
import com.aliyun.utils.NativeLoader;

public class JniUrlListPlayer extends JniListPlayerBase {
    private static final String TAG = "JniUrlListPlayer";

    static {
        NativeLoader.loadPlayer();
    }

    public JniUrlListPlayer(Context context, long j10) {
        super(context, j10);
    }

    public void addUrl(String str, String str2) {
        nAddUrl(str, str2);
    }

    public boolean moveTo(String str) {
        return nMoveTo(str);
    }

    public boolean moveToNext() {
        return nMoveToNext();
    }

    public boolean moveToPrev() {
        return nMoveToPrev();
    }

    native void nAddUrl(String str, String str2);

    native boolean nMoveTo(String str);

    native boolean nMoveToNext();

    native boolean nMoveToPrev();

    public static void loadClass() {
    }
}
