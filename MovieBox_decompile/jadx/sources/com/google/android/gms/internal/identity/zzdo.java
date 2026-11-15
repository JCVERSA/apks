package com.google.android.gms.internal.identity;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.location.zzz;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzdo extends zzq {
    final TaskCompletionSource zza;
    final zzz zzb;

    zzdo(TaskCompletionSource taskCompletionSource, zzz zzzVar) {
        this.zza = taskCompletionSource;
        this.zzb = zzzVar;
    }

    @Override
    public final void zzd(zzl zzlVar) {
        TaskUtil.setResultOrApiException(zzlVar.getStatus(), this.zza);
    }

    @Override
    public final void zze() throws RemoteException {
        this.zzb.zze();
    }
}
