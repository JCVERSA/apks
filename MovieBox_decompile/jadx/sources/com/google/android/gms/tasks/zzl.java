package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

final class zzl implements zzq {
    private final Executor zza;
    private final Object zzb = new Object();
    private OnFailureListener zzc;

    public zzl(@NonNull Executor executor, @NonNull OnFailureListener onFailureListener) {
        this.zza = executor;
        this.zzc = onFailureListener;
    }

    @Override
    public final void zzc() {
        synchronized (this.zzb) {
            this.zzc = null;
        }
    }

    @Override
    public final void zzd(@NonNull Task task) {
        if (task.isSuccessful() || task.isCanceled()) {
            return;
        }
        synchronized (this.zzb) {
            try {
                if (this.zzc == null) {
                    return;
                }
                this.zza.execute(new zzk(this, task));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
