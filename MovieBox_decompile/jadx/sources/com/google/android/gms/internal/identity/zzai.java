package com.google.android.gms.internal.identity;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzai implements BaseImplementation.ResultHolder {
    private final TaskCompletionSource zza;

    public zzai(TaskCompletionSource taskCompletionSource) {
        Preconditions.checkNotNull(taskCompletionSource);
        this.zza = taskCompletionSource;
    }

    @Override
    public final void setFailedResult(@Nullable Status status) {
        if (status == null) {
            return;
        }
        this.zza.setException(new ApiException(status));
    }

    @Override
    public final void setResult(Object obj) {
        TaskUtil.setResultOrApiException((Status) obj, null, this.zza);
    }
}
