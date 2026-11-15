package com.google.android.gms.internal.identity;

import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzde extends zzaa {
    final TaskCompletionSource zza;

    zzde(TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override
    public final void zzb(LocationSettingsResult locationSettingsResult) {
        TaskUtil.setResultOrApiException(locationSettingsResult.getStatus(), new LocationSettingsResponse(locationSettingsResult), this.zza);
    }
}
