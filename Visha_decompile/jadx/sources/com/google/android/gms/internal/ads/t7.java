package com.google.android.gms.internal.ads;

public final class t7 {
    public static final t7 c;
    public static final t7 d;
    public final boolean a;
    public final Throwable b;

    static {
        if (d8.zzg) {
            d = null;
            c = null;
        } else {
            d = new t7(false, null);
            c = new t7(true, null);
        }
    }

    public t7(boolean z, Throwable th) {
        this.a = z;
        this.b = th;
    }
}
