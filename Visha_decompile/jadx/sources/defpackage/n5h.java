package defpackage;

import com.google.android.gms.internal.ads.j8;

public final class n5h implements eeh {
    public final fy0 a;
    public final enh b;

    public n5h(fy0 fy0Var, enh enhVar) {
        this.a = fy0Var;
        this.b = enhVar;
    }

    @Override
    public final int zza() {
        return 4;
    }

    @Override
    public final im5 zzb() {
        return j8.h(new o5h(this.b, this.a.currentTimeMillis()));
    }
}
