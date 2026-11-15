package com.mgtv.ads;

import android.util.Log;

public class AdLog {
    private static final String TAG = "TAG_MI";

    public static void d(String str) {
        Log.d(TAG, str);
    }

    public static void e(String str) {
        Log.e(TAG, str);
    }

    public static void i(String str) {
        Log.i(TAG, str);
    }
}
