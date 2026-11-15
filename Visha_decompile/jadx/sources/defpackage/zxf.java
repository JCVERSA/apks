package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.n8;
import com.google.android.gms.internal.ads.zzbvk;
import defpackage.zxf;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zxf implements kzf, v7g, p4g, zzf, iue {
    public final b0g b;
    public final hmh c;
    public final ScheduledExecutorService d;
    public final Executor e;
    public ScheduledFuture g;
    public final String i;
    public final n8 f = n8.h();
    public final AtomicBoolean h = new AtomicBoolean();

    public zxf(b0g b0gVar, hmh hmhVar, ScheduledExecutorService scheduledExecutorService, Executor executor, String str) {
        this.b = b0gVar;
        this.c = hmhVar;
        this.d = scheduledExecutorService;
        this.e = executor;
        this.i = str;
    }

    public static void c(zxf zxfVar) {
        synchronized (zxfVar) {
            try {
                n8 n8Var = zxfVar.f;
                if (n8Var.isDone()) {
                    return;
                }
                n8Var.zzc(Boolean.TRUE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final boolean d() {
        return this.i.equals("com.google.ads.mediation.admob.AdMobAdapter");
    }

    @Override
    public final void a(zzbvk zzbvkVar, String str, String str2) {
    }

    @Override
    public final synchronized void h(zze zzeVar) {
        try {
            n8 n8Var = this.f;
            if (n8Var.isDone()) {
                return;
            }
            ScheduledFuture scheduledFuture = this.g;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            n8Var.zzd(new Exception());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void zza() {
    }

    @Override
    public final void zzb() {
    }

    @Override
    public final void zzc() {
        hmh hmhVar = this.c;
        if (hmhVar.e == 3) {
            return;
        }
        int i = hmhVar.Y;
        if (i == 0 || i == 1) {
            if (((Boolean) zzbd.zzc().b(cye.Cb)).booleanValue() && d()) {
                return;
            }
            this.b.zza();
        }
    }

    @Override
    public final void zzdn(hue hueVar) {
        if (((Boolean) zzbd.zzc().b(cye.Cb)).booleanValue() && d() && hueVar.j && this.h.compareAndSet(false, true) && this.c.e != 3) {
            com.google.android.gms.ads.internal.util.zze.zza("Full screen 1px impression occurred");
            this.b.zza();
        }
    }

    @Override
    public final void zze() {
    }

    @Override
    public final void zzf() {
    }

    @Override
    public final void zzi() {
    }

    @Override
    public final synchronized void zzj() {
        if (this.c.e == 4) {
            this.b.zza();
            return;
        }
        n8 n8Var = this.f;
        if (n8Var.isDone()) {
            return;
        }
        ScheduledFuture scheduledFuture = this.g;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        n8Var.zzc(Boolean.TRUE);
    }

    @Override
    public final void zzu() {
        hmh hmhVar = this.c;
        int i = hmhVar.e;
        if (i == 3 || i == 4) {
            return;
        }
        if (((Boolean) zzbd.zzc().b(cye.I1)).booleanValue() && hmhVar.Y == 2) {
            int i2 = hmhVar.q;
            if (i2 == 0) {
                this.b.zza();
            } else {
                j8.r(this.f, new yxf(this), this.e);
                this.g = this.d.schedule(new Runnable() {
                    @Override
                    public final void run() {
                        zxf.c(this.zza);
                    }
                }, i2, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override
    public final void zzv() {
    }
}
