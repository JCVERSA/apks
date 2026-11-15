package defpackage;

import android.os.Build;

public abstract class xjj {
    public static final boolean a;

    static {
        boolean z = false;
        if ("Amazon".equals(Build.MANUFACTURER)) {
            String str = Build.MODEL;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z = true;
            }
        }
        a = z;
    }
}
