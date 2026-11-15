package com.google.android.gms.internal.identity;

import android.location.Location;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzdk extends zzy {
    final TaskCompletionSource zza;

    zzdk(TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override
    public final void zzb(Status status, Location location) {
        TaskUtil.setResultOrApiException(status, location, this.zza);
    }
}
