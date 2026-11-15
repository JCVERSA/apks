package defpackage;

import android.os.Handler;
import android.os.Looper;

public interface ey0 {
    public static final ey0 a = new l9a();

    xn4 createHandler(Looper looper, Handler.Callback callback);

    long elapsedRealtime();

    void onThreadBlocked();

    long uptimeMillis();
}
