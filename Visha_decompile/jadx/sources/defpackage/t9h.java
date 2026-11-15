package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

public final class t9h implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;
    public final qyi d;

    public t9h(qyi qyiVar, qyi qyiVar2, qyi qyiVar3, qyi qyiVar4) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar3;
        this.d = qyiVar4;
    }

    @Override
    public final Object zzb() {
        t7h t7hVarZzb = ((v7h) this.a).zzb();
        k8h k8hVar = (k8h) this.b.zzb();
        List list = (List) this.c.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.d.zzb();
        if (list.contains("13")) {
            return new nch(k8hVar, ((Integer) zzbd.zzc().b(cye.tc)).intValue(), scheduledExecutorService);
        }
        return new nch(t7hVarZzb, ((Integer) zzbd.zzc().b(cye.tc)).intValue(), scheduledExecutorService);
    }
}
