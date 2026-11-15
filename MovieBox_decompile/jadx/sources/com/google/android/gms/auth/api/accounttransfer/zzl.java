package com.google.android.gms.auth.api.accounttransfer;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.auth.zzap;
import com.google.android.gms.internal.auth.zzau;
import com.google.android.gms.tasks.TaskCompletionSource;

abstract class zzl extends TaskApiCall {
    protected TaskCompletionSource zzb;

    zzl(int i10, zzk zzkVar) {
        super(null, false, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected final void doExecute(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        this.zzb = taskCompletionSource;
        zza((zzau) ((zzap) anyClient).getService());
    }

    protected abstract void zza(zzau zzauVar) throws RemoteException;
}
