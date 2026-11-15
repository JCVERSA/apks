package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzab extends com.google.android.gms.internal.common.zza implements IGmsCallbacks {
    zzab(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override
    public final void onPostInitComplete(int i10, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i10);
        parcelZza.writeStrongBinder(iBinder);
        com.google.android.gms.internal.common.zzc.zzc(parcelZza, bundle);
        zzC(1, parcelZza);
    }

    @Override
    public final void zzb(int i10, Bundle bundle) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzc(int i10, IBinder iBinder, zzk zzkVar) throws RemoteException {
        throw null;
    }
}
