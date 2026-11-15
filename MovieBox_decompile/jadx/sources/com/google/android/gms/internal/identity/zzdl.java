package com.google.android.gms.internal.identity;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzdl extends zzw {
    final TaskCompletionSource zza;

    zzdl(TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override
    public final void zzb(Status status, LocationAvailability locationAvailability) {
        TaskUtil.setResultOrApiException(status, locationAvailability, this.zza);
    }
}
