package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

public final class nah implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;
    public final qyi d;

    public nah(qyi qyiVar, qyi qyiVar2, qyi qyiVar3, qyi qyiVar4) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar3;
        this.d = qyiVar4;
    }

    @Override
    public final Object zzb() {
        sdh sdhVarZzb = ((udh) this.a).zzb();
        k8h k8hVar = (k8h) this.b.zzb();
        List list = (List) this.c.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.d.zzb();
        if (list.contains("35")) {
            return new nch(k8hVar, ((Integer) zzbd.zzc().b(cye.ic)).intValue(), scheduledExecutorService);
        }
        return new nch(sdhVarZzb, ((Integer) zzbd.zzc().b(cye.ic)).intValue(), scheduledExecutorService);
    }
}
