package com.mgtv.drm.log;

import com.mgtv.drm.jni.LightPlayDrmNativeLog;
import java.util.Locale;

public class DebugLog {
    public static final String MODULE_ID = "12";
    private static final int REPORT_LOG_LEVEL_DEBUG = 0;
    private static final int REPORT_LOG_LEVEL_ERROR = 3;
    private static final int REPORT_LOG_LEVEL_INFO = 1;
    private static final int REPORT_LOG_LEVEL_WARN = 2;

    public static void d(String str, String str2) {
        reportLog(0, str, str2);
    }

    public static void dfmt(String str, String str2, Object... objArr) {
        reportLog(0, str, String.format(Locale.US, str2, objArr));
    }

    public static void e(String str, String str2) {
        reportLog(3, str, str2);
    }

    public static void efmt(String str, String str2, Object... objArr) {
        reportLog(3, str, String.format(Locale.US, str2, objArr));
    }

    public static void i(String str, String str2) {
        reportLog(1, str, str2);
    }

    public static void ifmt(String str, String str2, Object... objArr) {
        reportLog(1, str, String.format(Locale.US, str2, objArr));
    }

    private static void reportLog(int i, String str, String str2) {
        LightPlayDrmNativeLog.ImgoLogReport(i, "12", str, str2);
    }

    public static void v(String str, String str2) {
        reportLog(0, str, str2);
    }

    public static void vfmt(String str, String str2, Object... objArr) {
        reportLog(0, str, String.format(Locale.US, str2, objArr));
    }

    public static void w(String str, String str2) {
        reportLog(2, str, str2);
    }

    public static void wfmt(String str, String str2, Object... objArr) {
        reportLog(2, str, String.format(Locale.US, str2, objArr));
    }
}
