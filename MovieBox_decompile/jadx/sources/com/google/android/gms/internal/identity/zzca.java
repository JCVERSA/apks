package com.google.android.gms.internal.identity;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzca implements RemoteCall {
    static final zzca zza = new zzca();

    private zzca() {
    }

    @Override
    public final void accept(Object obj, Object obj2) throws RemoteException {
        ((zzdz) obj).zzB((TaskCompletionSource) obj2);
    }
}
