package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.AccountChangeEventsResponse;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzz extends zzl {
    final TaskCompletionSource zza;

    zzz(zzab zzabVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override
    public final void zzb(Status status, AccountChangeEventsResponse accountChangeEventsResponse) {
        zzab.zzf(status, accountChangeEventsResponse, this.zza);
    }
}
