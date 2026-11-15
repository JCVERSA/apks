package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

public final class fah implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;
    public final qyi d;

    public fah(qyi qyiVar, qyi qyiVar2, qyi qyiVar3, qyi qyiVar4) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar3;
        this.d = qyiVar4;
    }

    @Override
    public final Object zzb() {
        obh obhVarZzb = ((qbh) this.a).zzb();
        k8h k8hVar = (k8h) this.b.zzb();
        List list = (List) this.c.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.d.zzb();
        if (list.contains("60")) {
            return new nch(k8hVar, ((Integer) zzbd.zzc().b(cye.Sc)).intValue(), scheduledExecutorService);
        }
        return new nch(obhVarZzb, ((Integer) zzbd.zzc().b(cye.Sc)).intValue(), scheduledExecutorService);
    }
}
