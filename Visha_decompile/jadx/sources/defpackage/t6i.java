package defpackage;

import android.os.Handler;
import android.os.Looper;

public class t6i extends Handler {
    public final Looper a;

    public t6i(Looper looper) {
        super(looper);
        this.a = Looper.getMainLooper();
    }

    public t6i(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        this.a = Looper.getMainLooper();
    }
}
