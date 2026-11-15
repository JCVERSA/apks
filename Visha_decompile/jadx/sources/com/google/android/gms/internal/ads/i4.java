package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import defpackage.a6g;
import defpackage.cye;
import defpackage.fy0;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class i4 extends a6g {
    public final ScheduledExecutorService c;
    public final fy0 d;
    public long e;
    public long f;
    public long g;
    public long h;
    public boolean i;
    public ScheduledFuture j;
    public ScheduledFuture k;

    public i4(ScheduledExecutorService scheduledExecutorService, fy0 fy0Var) {
        super(Collections.emptySet());
        this.e = -1L;
        this.f = -1L;
        this.g = -1L;
        this.h = -1L;
        this.i = false;
        this.c = scheduledExecutorService;
        this.d = fy0Var;
    }

    public final synchronized void F(int i) {
        zze.zza("In scheduleRefresh: " + i);
        if (i > 0) {
            long millis = TimeUnit.SECONDS.toMillis(i);
            if (this.i) {
                long j = this.g;
                if (j <= 0 || millis >= j) {
                    millis = j;
                }
                this.g = millis;
                return;
            }
            long jElapsedRealtime = this.d.elapsedRealtime();
            if (((Boolean) zzbd.zzc().b(cye.md)).booleanValue()) {
                long j2 = this.e;
                if (jElapsedRealtime >= j2 || j2 - jElapsedRealtime > millis) {
                    H(millis);
                }
            } else {
                long j3 = this.e;
                if (jElapsedRealtime > j3 || j3 - jElapsedRealtime > millis) {
                    H(millis);
                }
            }
        }
    }

    public final synchronized void G(int i) {
        zze.zza("In scheduleShowRefreshedAd: " + i);
        if (i > 0) {
            long millis = TimeUnit.SECONDS.toMillis(i);
            if (this.i) {
                long j = this.h;
                if (j <= 0 || millis >= j) {
                    millis = j;
                }
                this.h = millis;
                return;
            }
            long jElapsedRealtime = this.d.elapsedRealtime();
            if (((Boolean) zzbd.zzc().b(cye.md)).booleanValue()) {
                if (jElapsedRealtime == this.f) {
                    zze.zza("In scheduleShowRefreshedAd: currentTimeMs = scheduledShowTimeMs");
                }
                long j2 = this.f;
                if (jElapsedRealtime >= j2 || j2 - jElapsedRealtime > millis) {
                    I(millis);
                }
            } else {
                long j3 = this.f;
                if (jElapsedRealtime > j3 || j3 - jElapsedRealtime > millis) {
                    I(millis);
                }
            }
        }
    }

    public final synchronized void H(long j) {
        try {
            ScheduledFuture scheduledFuture = this.j;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.j.cancel(false);
            }
            this.e = this.d.elapsedRealtime() + j;
            this.j = this.c.schedule(new zzcxs(this, null), j, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void I(long j) {
        try {
            ScheduledFuture scheduledFuture = this.k;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.k.cancel(false);
            }
            this.f = this.d.elapsedRealtime() + j;
            this.k = this.c.schedule(new zzcxt(this, null), j, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zza() {
        this.i = false;
        H(0L);
    }

    public final synchronized void zzb() {
        try {
            if (this.i) {
                return;
            }
            ScheduledFuture scheduledFuture = this.j;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                this.g = -1L;
            } else {
                this.j.cancel(false);
                this.g = this.e - this.d.elapsedRealtime();
            }
            ScheduledFuture scheduledFuture2 = this.k;
            if (scheduledFuture2 == null || scheduledFuture2.isCancelled()) {
                this.h = -1L;
            } else {
                this.k.cancel(false);
                this.h = this.f - this.d.elapsedRealtime();
            }
            this.i = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzc() {
        ScheduledFuture scheduledFuture;
        ScheduledFuture scheduledFuture2;
        try {
            if (this.i) {
                if (this.g > 0 && (scheduledFuture2 = this.j) != null && scheduledFuture2.isCancelled()) {
                    H(this.g);
                }
                if (this.h > 0 && (scheduledFuture = this.k) != null && scheduledFuture.isCancelled()) {
                    I(this.h);
                }
                this.i = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
