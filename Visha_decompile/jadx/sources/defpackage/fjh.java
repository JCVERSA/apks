package defpackage;

import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbuy;
import java.util.concurrent.Executor;

public final class fjh implements wjh {
    public final voh a;
    public final Executor b;
    public final v7i c = new djh(this);

    public fjh(voh vohVar, Executor executor) {
        this.a = vohVar;
        this.b = executor;
    }

    public static im5 b(fjh fjhVar, oyf oyfVar, qjh qjhVar) {
        voh vohVar = fjhVar.a;
        cph cphVar = qjhVar.b;
        zzbuy zzbuyVar = qjhVar.a;
        bph bphVarC = vohVar.c(cphVar);
        if (bphVarC != null && zzbuyVar != null) {
            j8.r(oyfVar.zzb().g(zzbuyVar), fjhVar.c, fjhVar.b);
        }
        return j8.h(new ejh(cphVar, zzbuyVar, bphVarC));
    }

    @Override
    public final im5 a(xjh xjhVar, vjh vjhVar, Object obj) {
        return c(xjhVar, vjhVar, null);
    }

    public final im5 c(xjh xjhVar, vjh vjhVar, final oyf oyfVar) {
        voh vohVar = this.a;
        Executor executor = this.b;
        return (q7i) j8.e((q7i) j8.n(q7i.zzE(new sjh(vohVar, oyfVar, executor).c()), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return fjh.b(this.a, oyfVar, (qjh) obj);
            }
        }, executor), Exception.class, new cjh(this), executor);
    }

    @Override
    public final Object zzd() {
        return null;
    }
}
