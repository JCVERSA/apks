package defpackage;

import android.os.Handler;
import android.os.Looper;

public abstract class oia {
    public static volatile Handler a;
    public static final int b = Runtime.getRuntime().availableProcessors();

    public static Handler a() {
        if (a == null) {
            a = new Handler(Looper.getMainLooper());
        }
        return a;
    }

    public static void b(Runnable runnable, long j) {
        a().postDelayed(runnable, j);
    }
}
