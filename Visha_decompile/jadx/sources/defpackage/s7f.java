package defpackage;

import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.t3;
import com.google.android.gms.internal.ads.zzbnp;

public final class s7f {
    public final t3 a;
    public im5 b;

    public s7f(t3 t3Var) {
        this.a = t3Var;
    }

    public final v7f a(String str, w6f w6fVar, v6f v6fVar) {
        d();
        return new v7f(this.b, "google.afma.activeView.handleUpdate", w6fVar, v6fVar);
    }

    public final void b(final String str, final n3f n3fVar) {
        d();
        this.b = j8.n(this.b, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                r6f r6fVar = (r6f) obj;
                r6fVar.b(str, n3fVar);
                return j8.h(r6fVar);
            }
        }, zef.g);
    }

    public final void c(final String str, final n3f n3fVar) {
        this.b = j8.m(this.b, new m2i() {
            @Override
            public final Object apply(Object obj) {
                r6f r6fVar = (r6f) obj;
                r6fVar.a(str, n3fVar);
                return r6fVar;
            }
        }, zef.g);
    }

    public final void d() {
        if (this.b == null) {
            final eff effVar = new eff();
            this.b = effVar;
            this.a.b(null).f(new iff() {
                @Override
                public final void zza(Object obj) {
                    effVar.c((r6f) obj);
                }
            }, new gff() {
                @Override
                public final void zza() {
                    effVar.d(new zzbnp("Cannot get Javascript Engine"));
                }
            });
        }
    }
}
