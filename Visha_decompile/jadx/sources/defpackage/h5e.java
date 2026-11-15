package defpackage;

import android.os.Handler;
import android.os.Looper;

public final class h5e extends Handler {
    public final Looper a;

    public h5e(Looper looper) {
        super(looper);
        this.a = Looper.getMainLooper();
    }
}
