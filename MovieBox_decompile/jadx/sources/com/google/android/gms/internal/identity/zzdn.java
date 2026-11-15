package com.google.android.gms.internal.identity;

import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzdn extends zzq {
    final Object zza;
    final TaskCompletionSource zzb;

    zzdn(Object obj, TaskCompletionSource taskCompletionSource) {
        this.zza = obj;
        this.zzb = taskCompletionSource;
    }

    @Override
    public final void zzd(zzl zzlVar) {
        TaskUtil.setResultOrApiException(zzlVar.getStatus(), this.zza, this.zzb);
    }

    @Override
    public final void zze() {
    }
}
