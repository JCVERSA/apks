package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzbvl extends zzaxx implements IInterface {
    public zzbvl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    public final void zze(zzbvk zzbvkVar, String str, String str2) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbvkVar);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzda(2, parcelZza);
    }
}
