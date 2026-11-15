package com.mgtv.drm.log;

public class LightPlayLogger {
    public static final int REPORT_LOG_LEVEL_DEBUG = 0;
    public static final int REPORT_LOG_LEVEL_ERROR = 3;
    public static final int REPORT_LOG_LEVEL_INFO = 1;
    public static final int REPORT_LOG_LEVEL_WARN = 2;
    private static OnLogCallback mOnLogCallback = null;
    private static boolean sDebugMode = false;

    public interface OnLogCallback {
        void onLogCb(int i, String str, String str2, String str3);
    }

    public static OnLogCallback getLogCallback() {
        return mOnLogCallback;
    }

    public static boolean isDebugMode() {
        return sDebugMode;
    }

    public static void openDebugMode(boolean z) {
        sDebugMode = z;
    }

    public static void setLogCallback(OnLogCallback onLogCallback) {
        mOnLogCallback = onLogCallback;
    }
}
