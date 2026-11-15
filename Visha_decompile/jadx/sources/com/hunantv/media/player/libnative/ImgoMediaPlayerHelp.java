package com.hunantv.media.player.libnative;

import android.content.Context;
import com.hunantv.media.player.loader.ImgoLibLoader;
import java.io.UnsupportedEncodingException;

public final class ImgoMediaPlayerHelp {
    private static final String TAG = "com.hunantv.media.player.libnative.ImgoMediaPlayerHelp";
    private static volatile boolean mIsNativeInitialized = false;
    private static String mLogVaule = "0";

    public ImgoMediaPlayerHelp(Context context) {
        ImgoLibLoader.getInstance().syncTryLoadHelpLib(context);
    }

    private static String ImgoLogGetThreadName() {
        String name = Thread.currentThread().getName();
        return (name == null || name.isEmpty()) ? "chodisonLogThread" : name;
    }

    private static void ImgoLogSetThreadName(String str) {
        Thread.currentThread().setName(str);
    }

    private static String ImgoLogValueGet() {
        return mLogVaule;
    }

    public static void ImgoLogValueSet(String str) {
        mLogVaule = str;
    }

    private native byte[] _getLogFile();

    private native void _setLogRecordPath(String str);

    private static void initNativeOnce() {
        synchronized (ImgoMediaPlayerHelp.class) {
            try {
                if (!mIsNativeInitialized) {
                    mIsNativeInitialized = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String getLogFile() {
        try {
            byte[] bArr_getLogFile = _getLogFile();
            if (bArr_getLogFile != null) {
                return new String(bArr_getLogFile, "UTF-8");
            }
            return null;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void setLogRecordPath(String str) {
        _setLogRecordPath(str);
    }
}
