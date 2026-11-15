package defpackage;

import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public abstract class c39 {
    public static int a(float f) {
        return (int) ((f * b()) + 0.5f);
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

    public static DisplayMetrics d() {
        if (xj1.a() == null) {
            return null;
        }
        Display defaultDisplay = ((WindowManager) xj1.a().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            Class.forName("android.view.Display").getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
            return displayMetrics;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int e() {
        if (xj1.a() == null) {
            return -1;
        }
        return d().heightPixels;
    }

    public static int f() {
        if (xj1.a() == null) {
            return -1;
        }
        return d().widthPixels;
    }

    public static int g(float f) {
        return (int) ((f / b()) + 0.5f);
    }

    public static int h(float f) {
        return (int) ((f * c()) + 0.5f);
    }
}
