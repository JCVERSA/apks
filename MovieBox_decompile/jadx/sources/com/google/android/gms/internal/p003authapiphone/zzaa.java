package com.google.android.gms.internal.p003authapiphone;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzaa extends zzi {
    final TaskCompletionSource zza;

    zzaa(zzab zzabVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override
    public final void zzb(Status status) {
        TaskUtil.setResultOrApiException(status, this.zza);
    }
}
