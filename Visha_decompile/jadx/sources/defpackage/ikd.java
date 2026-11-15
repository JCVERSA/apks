package defpackage;

import android.util.Log;

public class ikd extends ja1 {
    public static ikd a;
    public static final boolean b = Log.isLoggable("ADSDK", 3);

    public static synchronized ikd b() {
        try {
            if (a == null) {
                synchronized (ikd.class) {
                    try {
                        if (a == null) {
                            a = new ikd();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return a;
    }

    public static boolean c() {
        return b;
    }

    @Override
    public String getGlobalTag() {
        return "ADSDK_S";
    }
}
