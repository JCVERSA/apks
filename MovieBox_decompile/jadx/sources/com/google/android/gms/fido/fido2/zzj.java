package com.google.android.gms.fido.fido2;

import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzj extends com.google.android.gms.internal.fido.zzd {
    final TaskCompletionSource zza;

    zzj(Fido2ApiClient fido2ApiClient, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override
    public final void zzb(boolean z10) throws RemoteException {
        this.zza.setResult(Boolean.valueOf(z10));
    }

    @Override
    public final void zzc(Status status) throws RemoteException {
        this.zza.trySetException(new ApiException(status));
    }
}
