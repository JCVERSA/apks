package defpackage;

import android.os.SystemClock;

public abstract class s0f {
    public static final s8f a;

    static {
        s8f nzeVar;
        try {
            SystemClock.elapsedRealtimeNanos();
            nzeVar = new sye();
        } catch (Throwable unused) {
            SystemClock.elapsedRealtime();
            nzeVar = new nze();
        }
        a = nzeVar;
    }

    public static s8f a() {
        return a;
    }
}
