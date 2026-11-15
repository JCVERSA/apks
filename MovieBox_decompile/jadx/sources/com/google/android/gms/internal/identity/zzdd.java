package com.google.android.gms.internal.identity;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.location.zzw;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzdd extends zzq {
    final TaskCompletionSource zza;
    final zzw zzb;

    zzdd(TaskCompletionSource taskCompletionSource, zzw zzwVar) {
        this.zza = taskCompletionSource;
        this.zzb = zzwVar;
    }

    @Override
    public final void zzd(zzl zzlVar) {
        TaskUtil.setResultOrApiException(zzlVar.getStatus(), this.zza);
    }

    @Override
    public final void zze() throws RemoteException {
        this.zzb.zzf();
    }
}
