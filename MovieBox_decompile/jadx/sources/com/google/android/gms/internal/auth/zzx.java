package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzx extends IStatusCallback.Stub {
    final TaskCompletionSource zza;

    zzx(zzab zzabVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override
    public final void onResult(Status status) {
        zzab.zzf(status, null, this.zza);
    }
}
