package com.google.android.gms.internal.auth;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzbn extends zzbd {
    final TaskCompletionSource zza;

    zzbn(zzbo zzboVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override
    public final void zzc(String str) throws RemoteException {
        TaskUtil.setResultOrApiException(str != null ? Status.RESULT_SUCCESS : new Status(3006), str, this.zza);
    }
}
