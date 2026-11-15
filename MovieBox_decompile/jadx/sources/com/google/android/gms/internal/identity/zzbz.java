package com.google.android.gms.internal.identity;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzbz implements zzbg {
    static final zzbz zza = new zzbz();

    private zzbz() {
    }

    @Override
    public final void zza(zzdz zzdzVar, ListenerHolder.ListenerKey listenerKey, boolean z10, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zzdzVar.zzw(listenerKey, z10, taskCompletionSource);
    }
}
