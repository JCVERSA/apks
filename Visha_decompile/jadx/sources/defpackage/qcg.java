package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;

public final class qcg implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;
    public final qyi d;

    public qcg(qyi qyiVar, qyi qyiVar2, qyi qyiVar3, qyi qyiVar4) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar3;
        this.d = qyiVar4;
    }

    @Override
    public final Object zzb() {
        fue fueVar = (fue) this.a.zzb();
        Executor executor = (Executor) this.b.zzb();
        Context context = (Context) this.c.zzb();
        return new zqf(executor, new lqf(context, fueVar), (fy0) this.d.zzb());
    }
}
