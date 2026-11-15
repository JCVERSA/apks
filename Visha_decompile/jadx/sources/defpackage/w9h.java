package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzfxb;
import java.util.concurrent.ScheduledExecutorService;

public final class w9h implements fyi {
    public final qyi a;

    public w9h(qyi qyiVar, qyi qyiVar2) {
        this.a = qyiVar2;
    }

    @Override
    public final Object zzb() {
        zzfxb zzfxbVarZzn;
        m8h m8hVarA = o8h.a();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.a.zzb();
        if (((Boolean) zzbd.zzc().b(cye.n4)).booleanValue()) {
            zzfxbVarZzn = zzfxb.zzo(new nch(m8hVarA, ((Integer) zzbd.zzc().b(cye.o4)).intValue(), scheduledExecutorService));
        } else {
            zzfxbVarZzn = zzfxb.zzn();
        }
        pyi.b(zzfxbVarZzn);
        return zzfxbVarZzn;
    }
}
