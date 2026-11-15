package com.mgtv.drm.loader;

import android.content.Context;
import com.mgtv.drm.log.DebugLog;

public class LightPlayDrmLibLoader {
    private static final String LIB_NAME_CRYPTO_1_1 = "crypto.1.1";
    private static final String LIB_NAME_MGTV_DRM = "mgtvdrm";
    private static final String LIB_NAME_SSL_1_1 = "ssl.1.1";
    private static final String TAG = "LightPlayDrmLibLoader";
    private static LightPlayDrmLibLoader sInstance;
    private boolean libsLoaded;
    private Object mSync = new Object();

    private LightPlayDrmLibLoader() {
    }

    public static void exLoadLibrary(Context context, String str) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        DebugLog.i(TAG, "exLoadLibrary: " + str);
        try {
            LibLoader.loadLibrary(context, str);
        } catch (UnsatisfiedLinkError e) {
            throw new LibLoaderError(e.getMessage(), 1);
        }
    }

    public static synchronized LightPlayDrmLibLoader getInstance() {
        try {
            if (sInstance == null) {
                sInstance = new LightPlayDrmLibLoader();
            }
        } catch (Throwable th) {
            throw th;
        }
        return sInstance;
    }

    public synchronized boolean loadLibs() {
        if (this.libsLoaded) {
            return true;
        }
        try {
            synchronized (this.mSync) {
                try {
                    exLoadLibrary(null, LIB_NAME_SSL_1_1);
                    exLoadLibrary(null, LIB_NAME_CRYPTO_1_1);
                    exLoadLibrary(null, LIB_NAME_MGTV_DRM);
                    this.libsLoaded = true;
                    return true;
                } catch (Error | Exception e) {
                    e.printStackTrace();
                    return false;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
