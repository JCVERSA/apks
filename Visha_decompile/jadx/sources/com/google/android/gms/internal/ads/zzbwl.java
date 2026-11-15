package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzbwl extends zzaxx implements IInterface {
    public zzbwl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    public final void zze(zzbwa zzbwaVar, String str, String str2) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbwaVar);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzda(2, parcelZza);
    }
}
