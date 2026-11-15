package defpackage;

import com.google.android.gms.ads.internal.util.zze;

public final class k7f implements iff {
    public final m6f a;
    public final Object b;
    public final eff c;
    public final n7f d;

    public k7f(n7f n7fVar, m6f m6fVar, Object obj, eff effVar) {
        this.a = m6fVar;
        this.b = obj;
        this.c = effVar;
        this.d = n7fVar;
    }

    @Override
    public final void zza(Object obj) {
        zze.zza("callJs > getEngine: Promise fulfilled");
        Object obj2 = this.b;
        eff effVar = this.c;
        n7f.b(this.d, this.a, (r6f) obj, obj2, effVar);
    }
}
