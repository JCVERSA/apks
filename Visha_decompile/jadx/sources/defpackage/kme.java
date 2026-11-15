package defpackage;

import com.google.android.gms.internal.ads.zzaps;

public final class kme {
    public final Object a;
    public final xle b;
    public final zzaps c;
    public boolean d;

    public kme(zzaps zzapsVar) {
        this.d = false;
        this.a = null;
        this.b = null;
        this.c = zzapsVar;
    }

    public static kme a(zzaps zzapsVar) {
        return new kme(zzapsVar);
    }

    public static kme b(Object obj, xle xleVar) {
        return new kme(obj, xleVar);
    }

    public final boolean c() {
        return this.c == null;
    }

    public kme(Object obj, xle xleVar) {
        this.d = false;
        this.a = obj;
        this.b = xleVar;
        this.c = null;
    }
}
