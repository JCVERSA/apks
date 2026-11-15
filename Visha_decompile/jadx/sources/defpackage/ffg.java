package defpackage;

import androidx.collection.ArrayMap;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.j8;
import java.util.concurrent.Executor;

public final class ffg implements d0g {
    public final ddg b;
    public final idg c;
    public final Executor d;
    public final Executor e;

    public ffg(ddg ddgVar, idg idgVar, Executor executor, Executor executor2) {
        this.b = ddgVar;
        this.c = idgVar;
        this.d = executor;
        this.e = executor2;
    }

    public final void b(final ejf ejfVar) {
        this.d.execute(new Runnable() {
            @Override
            public final void run() {
                ejfVar.zzd("onSdkImpression", new ArrayMap());
            }
        });
    }

    @Override
    public final void zzs() {
        if (this.c.d()) {
            ddg ddgVar = this.b;
            fxg fxgVarH0 = ddgVar.h0();
            if (fxgVarH0 == null && ddgVar.j0() != null && ((Boolean) zzbd.zzc().b(cye.t5)).booleanValue()) {
                im5 im5VarJ0 = ddgVar.j0();
                eff effVarC0 = ddgVar.c0();
                if (im5VarJ0 == null || effVarC0 == null) {
                    return;
                }
                j8.r(j8.l(im5VarJ0, effVarC0), new efg(this), this.e);
                return;
            }
            if (fxgVarH0 != null) {
                ejf ejfVarE0 = ddgVar.e0();
                ejf ejfVarF0 = ddgVar.f0();
                if (ejfVarE0 == null) {
                    ejfVarE0 = ejfVarF0 == null ? null : ejfVarF0;
                }
                if (ejfVarE0 != null) {
                    b(ejfVarE0);
                }
            }
        }
    }
}
