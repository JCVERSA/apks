package com.google.android.gms.measurement.internal;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class zzhv extends zzjd {
    private static final AtomicLong zza = new AtomicLong(Long.MIN_VALUE);

    @Nullable
    private zzhz zzb;

    @Nullable
    private zzhz zzc;
    private final PriorityBlockingQueue<zzhw<?>> zzd;
    private final BlockingQueue<zzhw<?>> zze;
    private final Thread.UncaughtExceptionHandler zzf;
    private final Thread.UncaughtExceptionHandler zzg;
    private final Object zzh;
    private final Semaphore zzi;
    private volatile boolean zzj;

    zzhv(zzhy zzhyVar) {
        super(zzhyVar);
        this.zzh = new Object();
        this.zzi = new Semaphore(2);
        this.zzd = new PriorityBlockingQueue<>();
        this.zze = new LinkedBlockingQueue();
        this.zzf = new zzhx(this, "Thread death: Uncaught exception on worker thread");
        this.zzg = new zzhx(this, "Thread death: Uncaught exception on network thread");
    }

    @Override
    public final zzaz zzf() {
        return super.zzf();
    }

    public final boolean zzg() {
        return Thread.currentThread() == this.zzb;
    }

    @Override
    protected final boolean zzh() {
        return false;
    }

    @Override
    public final zzgh zzi() {
        return super.zzi();
    }

    @Override
    public final zzgo zzj() {
        return super.zzj();
    }

    @Override
    public final zzha zzk() {
        return super.zzk();
    }

    @Override
    public final zzhv zzl() {
        return super.zzl();
    }

    @Override
    public final zzos zzq() {
        return super.zzq();
    }

    @Override
    public final void zzr() {
        if (Thread.currentThread() != this.zzc) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override
    public final void zzs() {
        super.zzs();
    }

    @Override
    public final void zzt() {
        if (Thread.currentThread() != this.zzb) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override
    public final zzab zzd() {
        return super.zzd();
    }

    @Override
    public final zzag zze() {
        return super.zze();
    }

    @Override
    public final Context zza() {
        return super.zza();
    }

    @Override
    public final Clock zzb() {
        return super.zzb();
    }

    public final void zzc(Runnable runnable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(runnable);
        zza(new zzhw<>(this, runnable, true, "Task exception on worker thread"));
    }

    @Nullable
    final <T> T zza(AtomicReference<T> atomicReference, long j10, String str, Runnable runnable) {
        synchronized (atomicReference) {
            zzl().zzb(runnable);
            try {
                atomicReference.wait(j10);
            } catch (InterruptedException unused) {
                zzj().zzu().zza("Interrupted waiting for " + str);
                return null;
            }
        }
        T t10 = atomicReference.get();
        if (t10 == null) {
            zzj().zzu().zza("Timed out waiting for " + str);
        }
        return t10;
    }

    public final <V> Future<V> zzb(Callable<V> callable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(callable);
        zzhw<?> zzhwVar = new zzhw<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.zzb) {
            zzhwVar.run();
        } else {
            zza(zzhwVar);
        }
        return zzhwVar;
    }

    public final void zzb(Runnable runnable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(runnable);
        zza(new zzhw<>(this, runnable, false, "Task exception on worker thread"));
    }

    public final <V> Future<V> zza(Callable<V> callable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(callable);
        zzhw<?> zzhwVar = new zzhw<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.zzb) {
            if (!this.zzd.isEmpty()) {
                zzj().zzu().zza("Callable skipped the worker queue.");
            }
            zzhwVar.run();
        } else {
            zza(zzhwVar);
        }
        return zzhwVar;
    }

    private final void zza(zzhw<?> zzhwVar) {
        synchronized (this.zzh) {
            try {
                this.zzd.add(zzhwVar);
                zzhz zzhzVar = this.zzb;
                if (zzhzVar == null) {
                    zzhz zzhzVar2 = new zzhz(this, "Measurement Worker", this.zzd);
                    this.zzb = zzhzVar2;
                    zzhzVar2.setUncaughtExceptionHandler(this.zzf);
                    this.zzb.start();
                } else {
                    zzhzVar.zza();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zza(Runnable runnable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(runnable);
        zzhw<?> zzhwVar = new zzhw<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.zzh) {
            try {
                this.zze.add(zzhwVar);
                zzhz zzhzVar = this.zzc;
                if (zzhzVar == null) {
                    zzhz zzhzVar2 = new zzhz(this, "Measurement Network", this.zze);
                    this.zzc = zzhzVar2;
                    zzhzVar2.setUncaughtExceptionHandler(this.zzg);
                    this.zzc.start();
                } else {
                    zzhzVar.zza();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
