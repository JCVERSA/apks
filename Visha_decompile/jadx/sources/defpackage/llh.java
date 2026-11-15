package defpackage;

import android.os.Handler;
import android.os.Looper;

public class llh extends Handler {
    public final Looper a;

    public llh(Looper looper) {
        super(looper);
        this.a = Looper.getMainLooper();
    }

    public llh(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        this.a = Looper.getMainLooper();
    }
}
