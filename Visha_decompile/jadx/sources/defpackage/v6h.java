package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

public final class v6h implements tbg {
    @Override
    public final olg a(Looper looper, Handler.Callback callback) {
        return new z9h(new Handler(looper, callback));
    }

    @Override
    public final long zza() {
        return System.currentTimeMillis();
    }

    @Override
    public final long zzb() {
        return SystemClock.elapsedRealtime();
    }

    @Override
    public final long zzc() {
        return System.nanoTime();
    }
}
