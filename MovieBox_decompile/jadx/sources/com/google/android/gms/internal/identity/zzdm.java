package com.google.android.gms.internal.identity;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzdm extends zzn {
    final TaskCompletionSource zza;

    zzdm(TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override
    public final void zzb(Status status, boolean z10) {
        TaskUtil.setResultOrApiException(status, Boolean.valueOf(z10), this.zza);
    }
}
