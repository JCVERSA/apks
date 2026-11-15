package com.jeffmony.m3u8library.utils;

import android.util.Log;

public class LogUtils {
    private static final boolean S_DEBUG = true;
    private static final boolean S_ERROR = true;
    private static final boolean S_INFO = true;
    private static final boolean S_WARN = true;

    public static void d(String str, String str2) {
        Log.d(str, str2);
    }

    public static void e(String str, String str2) {
        Log.e(str, str2);
    }

    public static void i(String str, String str2) {
        Log.i(str, str2);
    }

    public static void w(String str, String str2) {
        Log.w(str, str2);
    }
}
