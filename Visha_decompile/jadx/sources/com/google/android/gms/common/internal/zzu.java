package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zza;

public final class zzu extends zza implements ICancelToken {
    public zzu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICancelToken");
    }

    @Override
    public final void cancel() throws RemoteException {
        zzC(2, zza());
    }
}
