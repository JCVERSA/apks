package com.google.android.gms.internal.identity;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.location.zzac;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzbr implements RemoteCall {
    static final zzbr zza = new zzbr();

    private zzbr() {
    }

    @Override
    public final void accept(Object obj, Object obj2) throws RemoteException {
        Api api = zzbi.zzb;
        ((zzdz) obj).zzp(zzac.zza(), (TaskCompletionSource) obj2);
    }
}
