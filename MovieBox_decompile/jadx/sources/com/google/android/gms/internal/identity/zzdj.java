package com.google.android.gms.internal.identity;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzdj extends IStatusCallback.Stub {
    final Object zza;
    final TaskCompletionSource zzb;

    zzdj(Object obj, TaskCompletionSource taskCompletionSource) {
        this.zza = obj;
        this.zzb = taskCompletionSource;
    }

    @Override
    public final void onResult(Status status) {
        TaskUtil.setResultOrApiException(status, this.zza, this.zzb);
    }
}
