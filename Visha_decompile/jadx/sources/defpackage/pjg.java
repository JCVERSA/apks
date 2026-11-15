package defpackage;

import android.content.Context;
import android.opengl.EGL14;
import android.os.Build;
import com.google.android.gms.internal.ads.zzdn;

public abstract class pjg {
    public static void a(boolean z, String str) throws zzdn {
        if (!z) {
            throw new zzdn(str);
        }
    }

    public static boolean b(Context context) {
        int i = kfh.a;
        if (i < 24) {
            return false;
        }
        if (i < 26 && ("samsung".equals(Build.MANUFACTURER) || "XT1650".equals(Build.MODEL))) {
            return false;
        }
        if (i >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
            return d("EGL_EXT_protected_content");
        }
        return false;
    }

    public static boolean c() {
        return d("EGL_KHR_surfaceless_context");
    }

    public static boolean d(String str) {
        String strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
        return strEglQueryString != null && strEglQueryString.contains(str);
    }
}
