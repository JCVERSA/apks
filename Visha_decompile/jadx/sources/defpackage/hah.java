package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

public final class hah implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;

    public hah(qyi qyiVar, qyi qyiVar2, qyi qyiVar3, qyi qyiVar4) {
        this.a = qyiVar2;
        this.b = qyiVar3;
        this.c = qyiVar4;
    }

    @Override
    public final Object zzb() {
        wbh wbhVarA = ybh.a();
        k8h k8hVar = (k8h) this.a.zzb();
        List list = (List) this.b.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.c.zzb();
        if (list.contains("24")) {
            return new nch(k8hVar, ((Integer) zzbd.zzc().b(cye.nc)).intValue(), scheduledExecutorService);
        }
        return new nch(wbhVarA, ((Integer) zzbd.zzc().b(cye.nc)).intValue(), scheduledExecutorService);
    }
}
