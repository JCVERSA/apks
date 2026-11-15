package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class nch implements eeh {
    public final eeh a;
    public final long b;
    public final ScheduledExecutorService c;

    public nch(eeh eehVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.a = eehVar;
        this.b = j;
        this.c = scheduledExecutorService;
    }

    public static im5 a(nch nchVar, Throwable th) {
        if (((Boolean) zzbd.zzc().b(cye.w2)).booleanValue()) {
            eeh eehVar = nchVar.a;
            zzv.zzp().x(th, "OptionalSignalTimeout:" + eehVar.zza());
        }
        return j8.h(null);
    }

    @Override
    public final int zza() {
        return this.a.zza();
    }

    @Override
    public final im5 zzb() {
        im5 im5VarZzb = this.a.zzb();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (((Boolean) zzbd.zzc().b(cye.x2)).booleanValue()) {
            timeUnit = TimeUnit.MICROSECONDS;
        }
        long j = this.b;
        if (j > 0) {
            im5VarZzb = j8.o(im5VarZzb, j, timeUnit, this.c);
        }
        return j8.f(im5VarZzb, Throwable.class, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return nch.a(this.a, (Throwable) obj);
            }
        }, zef.g);
    }
}
