package defpackage;

import com.google.android.gms.internal.location.zzbs;

public final class r8f extends e7f {
    public final zzbs d;

    public r8f(zzbs zzbsVar, int i) {
        super(zzbsVar.size(), i);
        this.d = zzbsVar;
    }

    @Override
    public final Object a(int i) {
        return this.d.get(i);
    }
}
