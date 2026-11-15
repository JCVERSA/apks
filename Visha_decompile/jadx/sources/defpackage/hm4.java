package defpackage;

import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;

public abstract class hm4 {
    public static int a(float f) {
        return (int) ((f * b()) + 0.5f);
    }

    public static float b() {
        try {
            DisplayMetrics displayMetricsD = d();
            if (displayMetricsD == null) {
                return -1.0f;
            }
            return displayMetricsD.density;
        } catch (Exception unused) {
            return -1.0f;
        }
    }

    public static float c() {
        try {
            DisplayMetrics displayMetricsD = d();
            if (displayMetricsD == null) {
                return -1.0f;
            }
            return displayMetricsD.scaledDensity;
        } catch (Exception unused) {
            return -1.0f;
        }
    }

    public static DisplayMetrics d() {
        if (ul4.a() == null) {
            return null;
        }
        Display defaultDisplay = ((WindowManager) ul4.a().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            Class.forName("android.view.Display").getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
            return displayMetrics;
        } catch (Exception e) {
            ja1.Log().e("ssp", "getRealMetrics error: " + Log.getStackTraceString(e));
            return null;
        }
    }

    public static int e() {
        if (ul4.a() == null || ul4.a().getResources() == null) {
            return 0;
        }
        return ul4.a().getResources().getConfiguration().getLayoutDirection();
    }

    public static int f() {
        if (ul4.a() == null || ul4.a().getResources() == null) {
            return 0;
        }
        return ul4.a().getResources().getConfiguration().orientation;
    }

    public static int g() {
        if (ul4.a() == null) {
            return -1;
        }
        return d().heightPixels;
    }

    public static int h() {
        if (ul4.a() == null) {
            return -1;
        }
        return d().widthPixels;
    }

    public static int i(float f) {
        return (int) ((f / c()) + 0.5f);
    }

    public static int j(float f) {
        return (int) ((f * c()) + 0.5f);
    }
}
