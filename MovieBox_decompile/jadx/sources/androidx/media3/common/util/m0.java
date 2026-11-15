package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

public class m0 implements i {
    protected m0() {
    }

    @Override
    public p createHandler(Looper looper, Handler.Callback callback) {
        return new n0(new Handler(looper, callback));
    }

    @Override
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override
    public long nanoTime() {
        return System.nanoTime();
    }

    @Override
    public long uptimeMillis() {
        return SystemClock.uptimeMillis();
    }

    @Override
    public void a() {
    }
}
