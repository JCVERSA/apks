package com.google.android.gms.internal.identity;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzah extends IStatusCallback.Stub {
    final TaskCompletionSource zza;

    zzah(zzaj zzajVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override
    public final void onResult(Status status) {
        TaskUtil.setResultOrApiException(status, this.zza);
    }
}
