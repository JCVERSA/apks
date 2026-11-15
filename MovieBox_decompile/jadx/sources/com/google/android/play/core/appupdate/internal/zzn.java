package com.google.android.play.core.appupdate.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.TaskCompletionSource;

public abstract class zzn implements Runnable {

    @Nullable
    private final TaskCompletionSource zza;

    zzn() {
        this.zza = null;
    }

    @Override
    public final void run() {
        try {
            zza();
        } catch (Exception e10) {
            zzc(e10);
        }
    }

    protected abstract void zza();

    @Nullable
    final TaskCompletionSource zzb() {
        return this.zza;
    }

    public final void zzc(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.zza;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    public zzn(@Nullable TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }
}
