package com.google.android.gms.internal.identity;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.location.GeofenceStatusCodes;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzdg extends zzs {
    final TaskCompletionSource zza;

    zzdg(TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override
    public final void zzb(int i10, String[] strArr) {
        TaskUtil.setResultOrApiException(new Status(GeofenceStatusCodes.zza(i10)), this.zza);
    }

    @Override
    public final void zzc(int i10, String[] strArr) {
        TaskUtil.setResultOrApiException(new Status(GeofenceStatusCodes.zza(i10)), this.zza);
    }

    @Override
    public final void zzd(int i10, PendingIntent pendingIntent) {
        TaskUtil.setResultOrApiException(new Status(GeofenceStatusCodes.zza(i10)), this.zza);
    }
}
