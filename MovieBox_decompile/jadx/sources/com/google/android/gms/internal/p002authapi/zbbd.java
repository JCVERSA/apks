package com.google.android.gms.internal.p002authapi;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zbbd extends IStatusCallback.Stub {
    final TaskCompletionSource zba;

    zbbd(zbbg zbbgVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
    }

    @Override
    public final void onResult(Status status) throws RemoteException {
        TaskUtil.setResultOrApiException(status, this.zba);
    }
}
