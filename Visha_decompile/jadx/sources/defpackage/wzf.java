package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzdfl;
import defpackage.wzf;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class wzf extends a6g implements ozf {
    public final ScheduledExecutorService c;
    public ScheduledFuture d;
    public boolean e;

    public wzf(vzf vzfVar, Set set, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        super(set);
        this.e = false;
        this.c = scheduledExecutorService;
        super.C(vzfVar, executor);
    }

    public static void F(wzf wzfVar) {
        synchronized (wzfVar) {
            int i = zze.zza;
            zzo.zzg("Timeout waiting for show call succeed to be called.");
            wzfVar.y(new zzdfl("Timeout for show call succeed."));
            wzfVar.e = true;
        }
    }

    @Override
    public final void a(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        E(new z5g() {
            @Override
            public final void zza(Object obj) {
                ((ozf) obj).a(zzeVar);
            }
        });
    }

    @Override
    public final void y(final zzdfl zzdflVar) {
        if (this.e) {
            return;
        }
        ScheduledFuture scheduledFuture = this.d;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        E(new z5g() {
            @Override
            public final void zza(Object obj) {
                ((ozf) obj).y(zzdflVar);
            }
        });
    }

    @Override
    public final void zzb() {
        E(new z5g() {
            @Override
            public final void zza(Object obj) {
                ((ozf) obj).zzb();
            }
        });
    }

    public final synchronized void zze() {
        ScheduledFuture scheduledFuture = this.d;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
    }

    public final void zzf() {
        this.d = this.c.schedule(new Runnable() {
            @Override
            public final void run() {
                wzf.F(this.zza);
            }
        }, ((Integer) zzbd.zzc().b(cye.Oa)).intValue(), TimeUnit.MILLISECONDS);
    }
}
