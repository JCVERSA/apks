package com.simple.spiderman;

import android.content.Context;

public class SpiderMan {
    public static final String TAG = "SpiderMan";

    public interface OnCrashListener {
        void onCrash(Thread thread, Throwable th);
    }

    private SpiderMan() {
    }

    public static void init(Context context) {
    }

    public static void setOnCrashListener(OnCrashListener onCrashListener) {
    }

    public static void setTheme(int i) {
    }

    public static void show(Throwable th) {
    }
}
