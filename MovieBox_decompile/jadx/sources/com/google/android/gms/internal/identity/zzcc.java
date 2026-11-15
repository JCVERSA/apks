package com.google.android.gms.internal.identity;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzcc implements RemoteCall {
    static final zzcc zza = new zzcc();

    private zzcc() {
    }

    @Override
    public final void accept(Object obj, Object obj2) throws RemoteException {
        ((zzdz) obj).zzz((TaskCompletionSource) obj2);
    }
}
