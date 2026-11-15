package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import defpackage.wd8;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

final class zzft extends FutureTask implements Comparable {
    final boolean zza;
    final d zzb;
    private final long zzc;
    private final String zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzft(d dVar, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.zzb = dVar;
        wd8.l(str);
        long andIncrement = d.l.getAndIncrement();
        this.zzc = andIncrement;
        this.zzd = str;
        this.zza = z;
        if (andIncrement == Long.MAX_VALUE) {
            dVar.a.b().q().a("Tasks index overflow");
        }
    }

    @Override
    public final int compareTo(@NonNull Object obj) {
        zzft zzftVar = (zzft) obj;
        boolean z = this.zza;
        if (z == zzftVar.zza) {
            long j = this.zzc;
            long j2 = zzftVar.zzc;
            if (j < j2) {
                return -1;
            }
            if (j <= j2) {
                this.zzb.a.b().s().b("Two tasks share the same index. index", Long.valueOf(this.zzc));
                return 0;
            }
        } else if (z) {
            return -1;
        }
        return 1;
    }

    @Override
    public final void setException(Throwable th) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        this.zzb.a.b().q().b(this.zzd, th);
        if ((th instanceof zzfr) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzft(d dVar, Callable callable, boolean z, String str) {
        super(callable);
        this.zzb = dVar;
        wd8.l("Task exception on worker thread");
        long andIncrement = d.l.getAndIncrement();
        this.zzc = andIncrement;
        this.zzd = "Task exception on worker thread";
        this.zza = z;
        if (andIncrement == Long.MAX_VALUE) {
            dVar.a.b().q().a("Tasks index overflow");
        }
    }
}
