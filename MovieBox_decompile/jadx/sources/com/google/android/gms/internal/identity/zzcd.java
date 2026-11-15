package com.google.android.gms.internal.identity;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzcd implements zzbg {
    static final zzcd zza = new zzcd();

    private zzcd() {
    }

    @Override
    public final void zza(zzdz zzdzVar, ListenerHolder.ListenerKey listenerKey, boolean z10, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zzdzVar.zzv(listenerKey, z10, taskCompletionSource);
    }
}
