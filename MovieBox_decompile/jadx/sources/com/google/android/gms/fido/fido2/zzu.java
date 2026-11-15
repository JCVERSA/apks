package com.google.android.gms.fido.fido2;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzu extends com.google.android.gms.internal.fido.zzd {
    final TaskCompletionSource zza;

    zzu(Fido2PrivilegedApiClient fido2PrivilegedApiClient, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override
    public final void zzb(boolean z10) {
        this.zza.setResult(Boolean.valueOf(z10));
    }

    @Override
    public final void zzc(Status status) {
        this.zza.trySetException(new ApiException(status));
    }
}
