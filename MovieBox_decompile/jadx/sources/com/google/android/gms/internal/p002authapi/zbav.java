package com.google.android.gms.internal.p002authapi;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zbav extends zbak {
    final TaskCompletionSource zba;

    zbav(zbaw zbawVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
    }

    @Override
    public final void zbb(Status status, SavePasswordResult savePasswordResult) throws RemoteException {
        TaskUtil.setResultOrApiException(status, savePasswordResult, this.zba);
    }
}
