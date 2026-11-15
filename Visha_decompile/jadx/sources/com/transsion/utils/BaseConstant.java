package com.transsion.utils;

import android.os.Build;
import android.os.Environment;

public abstract class BaseConstant {
    public static int a = 1235;
    public static int b = 1240;
    public static final int c;
    public static final int d;
    public static String f;
    public static String g;
    public static final String i;
    public static final boolean j;
    public static final String k;
    public static final SCREEN_TYPE l;
    public static final Float m;
    public static final Float n;
    public static int o;
    public static int p;
    public static int q;
    public static int[] e = {0, 1, 2, 3};
    public static boolean h = false;

    public enum SCREEN_TYPE {
        FOLD,
        OPEN_PORT,
        OPEN_LAND,
        TABLE,
        BOOK
    }

    static {
        int i2 = 1240 + 1;
        c = i2;
        d = i2 + 1;
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
        sb.append(Build.VERSION.SDK_INT >= 30 ? "/Download/VishaAudios" : "/Vishaplayer/VishaAudios");
        i = sb.toString();
        j = true;
        k = "file://" + Environment.getExternalStorageDirectory().getAbsolutePath();
        l = SCREEN_TYPE.FOLD;
        m = Float.valueOf(600.0f);
        n = Float.valueOf(1600.0f);
        o = 0;
        p = 1;
        q = 1;
    }
}
