package defpackage;

import com.google.android.gms.internal.ads.j8;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public final class crh {
    public final Object a;
    public final String b;
    public final im5 c;
    public final List d;
    public final im5 e;
    public final erh f;

    public crh(erh erhVar, Object obj, String str, im5 im5Var, List list, im5 im5Var2) {
        this.f = erhVar;
        this.a = obj;
        this.b = str;
        this.c = im5Var;
        this.d = list;
        this.e = im5Var2;
    }

    public final rqh a() {
        Object obj = this.a;
        String strF = this.b;
        if (strF == null) {
            strF = this.f.f(obj);
        }
        final rqh rqhVar = new rqh(obj, strF, this.e);
        this.f.c.q(rqhVar);
        im5 im5Var = this.c;
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                this.zza.f.c.o(rqhVar);
            }
        };
        g8i g8iVar = zef.g;
        im5Var.addListener(runnable, g8iVar);
        j8.r(rqhVar, new brh(this, rqhVar), g8iVar);
        return rqhVar;
    }

    public final crh b(Object obj) {
        return this.f.b(obj, a());
    }

    public final crh c(Class cls, k7i k7iVar) {
        erh erhVar = this.f;
        return new crh(erhVar, this.a, this.b, this.c, this.d, j8.f(this.e, cls, k7iVar, erhVar.a));
    }

    public final crh d(final im5 im5Var) {
        return g(new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return im5Var;
            }
        }, zef.g);
    }

    public final crh e(final pqh pqhVar) {
        return f(new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return j8.h(pqhVar.zza(obj));
            }
        });
    }

    public final crh f(k7i k7iVar) {
        return g(k7iVar, this.f.a);
    }

    public final crh g(k7i k7iVar, Executor executor) {
        return new crh(this.f, this.a, this.b, this.c, this.d, j8.n(this.e, k7iVar, executor));
    }

    public final crh h(String str) {
        return new crh(this.f, this.a, str, this.c, this.d, this.e);
    }

    public final crh i(long j, TimeUnit timeUnit) {
        erh erhVar = this.f;
        return new crh(erhVar, this.a, this.b, this.c, this.d, j8.o(this.e, j, timeUnit, erhVar.b));
    }
}
