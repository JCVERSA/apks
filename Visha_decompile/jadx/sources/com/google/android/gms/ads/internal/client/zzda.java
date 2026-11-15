package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxx;

public final class zzda extends zzaxx implements zzdc {
    public zzda(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdListener");
    }

    @Override
    public final void zze() throws RemoteException {
        zzda(1, zza());
    }
}
