package com.pgl.ssdk;

import android.content.Context;
import android.graphics.Point;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public class c0 {

    public static int f39254a;

    public static int f39255b;

    public static int f39256c;

    private static int f39257d;

    private static int f39258e;

    private static int f39259f;

    private static void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            new DisplayMetrics();
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            f39257d = (int) displayMetrics.density;
            f39256c = displayMetrics.densityDpi;
        } catch (Throwable unused) {
        }
    }

    private static void b(Context context) {
        try {
            new DisplayMetrics();
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            f39258e = (int) displayMetrics.xdpi;
            f39259f = (int) displayMetrics.ydpi;
        } catch (Throwable unused) {
        }
    }

    private static void c(Context context) {
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            f39254a = point.x;
            f39255b = point.y;
        } catch (Throwable unused) {
        }
    }

    public static String d(Context context) {
        int i10 = -1;
        if (context != null) {
            try {
                i10 = Settings.System.getInt(context.getContentResolver(), "screen_brightness", -1);
            } catch (Throwable unused) {
            }
        }
        return String.valueOf(i10);
    }

    public static String e(Context context) {
        try {
            c(context);
            a(context);
            b(context);
        } catch (Throwable unused) {
        }
        return f39256c + "[<!>]" + f39254a + "," + f39255b + "[<!>]";
    }
}
