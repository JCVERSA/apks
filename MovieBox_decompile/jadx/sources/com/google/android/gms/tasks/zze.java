package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

final class zze implements Runnable {
    final Task zza;
    final zzf zzb;

    zze(zzf zzfVar, Task task) {
        this.zzb = zzfVar;
        this.zza = task;
    }

    @Override
    public final void run() {
        try {
            Task task = (Task) this.zzb.zzb.then(this.zza);
            if (task == null) {
                this.zzb.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            zzf zzfVar = this.zzb;
            Executor executor = TaskExecutors.zza;
            task.addOnSuccessListener(executor, zzfVar);
            task.addOnFailureListener(executor, this.zzb);
            task.addOnCanceledListener(executor, this.zzb);
        } catch (RuntimeExecutionException e10) {
            if (e10.getCause() instanceof Exception) {
                this.zzb.zzc.zza((Exception) e10.getCause());
            } else {
                this.zzb.zzc.zza(e10);
            }
        } catch (Exception e11) {
            this.zzb.zzc.zza(e11);
        }
    }
}
