package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;

public interface i {

    public static final i f10075a = new m0();

    void a();

    p createHandler(Looper looper, Handler.Callback callback);

    long currentTimeMillis();

    long elapsedRealtime();

    long nanoTime();

    long uptimeMillis();
}
