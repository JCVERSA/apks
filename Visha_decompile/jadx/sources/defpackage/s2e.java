package defpackage;

import android.os.Handler;
import android.os.Looper;

public class s2e extends Handler {
    public final Looper a;

    public s2e(Looper looper) {
        super(looper);
        this.a = Looper.getMainLooper();
    }

    public s2e(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        this.a = Looper.getMainLooper();
    }
}
