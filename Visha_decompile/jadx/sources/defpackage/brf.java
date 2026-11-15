package defpackage;

import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class brf implements ave {
    public final ScheduledExecutorService a;
    public final fy0 b;
    public ScheduledFuture c;
    public long d = -1;
    public long e = -1;
    public Runnable f = null;
    public boolean g = false;

    public brf(ScheduledExecutorService scheduledExecutorService, fy0 fy0Var) {
        this.a = scheduledExecutorService;
        this.b = fy0Var;
        zzv.zzb().c(this);
    }

    public final synchronized void a() {
        try {
            if (this.g) {
                return;
            }
            ScheduledFuture scheduledFuture = this.c;
            if (scheduledFuture == null || scheduledFuture.isDone()) {
                this.e = -1L;
            } else {
                this.c.cancel(true);
                this.e = this.d - this.b.elapsedRealtime();
            }
            this.g = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        ScheduledFuture scheduledFuture;
        try {
            if (this.g) {
                if (this.e > 0 && (scheduledFuture = this.c) != null && scheduledFuture.isCancelled()) {
                    this.c = this.a.schedule(this.f, this.e, TimeUnit.MILLISECONDS);
                }
                this.g = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(int i, Runnable runnable) {
        this.f = runnable;
        long j = i;
        this.d = this.b.elapsedRealtime() + j;
        this.c = this.a.schedule(runnable, j, TimeUnit.MILLISECONDS);
    }

    @Override
    public final void zza(boolean z) {
        if (z) {
            b();
        } else {
            a();
        }
    }
}
