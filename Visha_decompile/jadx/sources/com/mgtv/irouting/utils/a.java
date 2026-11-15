package com.mgtv.irouting.utils;

import android.content.Context;
import android.os.Environment;
import okhttp3.MediaType;

public class a {
    public static int a = 10;
    public static int b = 5000;
    public static int c = 600000;
    public static int d = 2;
    public static Context e;
    public static final MediaType f = MediaType.parse("application/json; charset=utf-8");

    public static boolean a() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static String b() {
        return a() ? Environment.getExternalStorageDirectory().getAbsolutePath() : "";
    }

    public static String c() {
        Context context = e;
        return context != null ? context.getExternalCacheDir().getAbsolutePath() : "";
    }
}
