package com.google.android.gms.internal.identity;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzcb implements RemoteCall {
    static final zzcb zza = new zzcb();

    private zzcb() {
    }

    @Override
    public final void accept(Object obj, Object obj2) throws RemoteException {
        ((zzdz) obj).zzy((TaskCompletionSource) obj2);
    }
}
