package defpackage;

import android.os.SystemClock;

public class m02 implements fy0 {
    public static final m02 a = new m02();

    public static fy0 a() {
        return a;
    }

    @Override
    public final long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override
    public final long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override
    public final long nanoTime() {
        return System.nanoTime();
    }
}
