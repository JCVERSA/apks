package com.transsion.core.utils;

import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public class e {
    public static int a(float f10) {
        return (int) ((f10 * b()) + 0.5f);
    }

    public static float b() {
        DisplayMetrics displayMetricsD = d();
        if (displayMetricsD == null) {
            return -1.0f;
        }
        return displayMetricsD.density;
    }

    public static float c() {
        DisplayMetrics displayMetricsD = d();
        if (displayMetricsD == null) {
            return -1.0f;
        }
        return displayMetricsD.scaledDensity;
    }

    private static DisplayMetrics d() {
        if (yj.a.a() == null) {
            return null;
        }
        Display defaultDisplay = ((WindowManager) yj.a.a().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            Class.forName("android.view.Display").getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
            return displayMetrics;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static int e() {
        if (yj.a.a() == null) {
            return -1;
        }
        return d().heightPixels;
    }

    public static int f() {
        if (yj.a.a() == null) {
            return -1;
        }
        return d().widthPixels;
    }

    public static int g(float f10) {
        return (int) ((f10 * c()) + 0.5f);
    }
}
