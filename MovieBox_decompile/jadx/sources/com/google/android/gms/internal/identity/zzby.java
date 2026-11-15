package com.google.android.gms.internal.identity;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzby implements RemoteCall {
    static final zzby zza = new zzby();

    private zzby() {
    }

    @Override
    public final void accept(Object obj, Object obj2) throws RemoteException {
        ((zzdz) obj).zzq(new LastLocationRequest.Builder().build(), (TaskCompletionSource) obj2);
    }
}
