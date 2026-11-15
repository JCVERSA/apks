package defpackage;

import com.google.android.gms.internal.play_billing.t;

public final class xug {
    public static final xug b;
    public static final xug c;
    public final Throwable a;

    static {
        if (t.e) {
            c = null;
            b = null;
        } else {
            c = new xug(false, null);
            b = new xug(true, null);
        }
    }

    public xug(boolean z, Throwable th) {
        this.a = th;
    }
}
