package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.aue;

public final class zzbwi extends zzaxx implements zzbwk {
    public zzbwi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override
    public final void zze(int i) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzda(2, parcelZza);
    }

    @Override
    public final void zzf(zze zzeVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzeVar);
        zzda(3, parcelZza);
    }

    @Override
    public final void zzg() throws RemoteException {
        zzda(1, zza());
    }
}
