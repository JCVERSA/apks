package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.j8;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class jgh implements eeh {
    public final ScheduledExecutorService a;

    public jgh(oaf oafVar, ScheduledExecutorService scheduledExecutorService, Context context) {
        this.a = scheduledExecutorService;
    }

    @Override
    public final int zza() {
        return 49;
    }

    @Override
    public final im5 zzb() {
        return j8.m(j8.o(j8.h(new Bundle()), ((Long) zzbd.zzc().b(cye.r4)).longValue(), TimeUnit.MILLISECONDS, this.a), new m2i() {
            @Override
            public final Object apply(Object obj) {
                return new kgh((Bundle) obj);
            }
        }, zef.a);
    }
}
