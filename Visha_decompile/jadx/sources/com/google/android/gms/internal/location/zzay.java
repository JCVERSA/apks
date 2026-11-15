package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.location.LocationSettingsResult;
import defpackage.oa0;
import defpackage.wd8;

final class zzay extends zzan {
    private oa0 zza;

    public zzay(oa0 oa0Var) {
        wd8.b(oa0Var != null, "listener can't be null.");
        this.zza = oa0Var;
    }

    @Override
    public final void zzb(LocationSettingsResult locationSettingsResult) throws RemoteException {
        this.zza.a(locationSettingsResult);
        this.zza = null;
    }
}
