package com.google.android.gms.internal.play_billing;

public final class d {
    public static final d c;
    public static final d d;
    public final boolean a;
    public final Throwable b;

    static {
        if (m.g) {
            d = null;
            c = null;
        } else {
            d = new d(false, null);
            c = new d(true, null);
        }
    }

    public d(boolean z, Throwable th) {
        this.a = z;
        this.b = th;
    }
}
