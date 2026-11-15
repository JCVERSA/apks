package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

public class l9a implements ey0 {
    @Override
    public xn4 createHandler(Looper looper, Handler.Callback callback) {
        return new baa(new Handler(looper, callback));
    }

    @Override
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override
    public void onThreadBlocked() {
    }

    @Override
    public long uptimeMillis() {
        return SystemClock.uptimeMillis();
    }
}
