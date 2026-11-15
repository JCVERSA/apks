package com.transsion.socket;

import android.util.Log;
import java.text.SimpleDateFormat;

public class SLog {
    public static final boolean DEBUG = true;
    public static final boolean INFO = true;
    public static final String TAG = "Socket";
    static SimpleDateFormat TIME_SDF = new SimpleDateFormat("yy-MM-dd HH:mm:ss SSS");
    public static final boolean WARN = true;

    public static void d(String str, String str2) {
        Log.d(str, String.format("%-20s \t %s ", Thread.currentThread().getName(), str2));
    }

    public static void i(String str, String str2) {
        Log.i(str, String.format("%-20s \t %s ", Thread.currentThread().getName(), str2));
    }

    public static void w(String str, String str2) {
        Log.w(str, String.format("%-20s \t %s ", Thread.currentThread().getName(), str2));
    }
}
