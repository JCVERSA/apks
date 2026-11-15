package defpackage;

import android.os.SystemClock;

public abstract class dx9 {
    public static dx9 a(long j, long j2, long j3) {
        return new o30(j, j2, j3);
    }

    public static dx9 e() {
        return a(System.currentTimeMillis(), SystemClock.elapsedRealtime(), SystemClock.uptimeMillis());
    }

    public abstract long b();

    public abstract long c();

    public abstract long d();
}
