package com.google.android.play.core.review.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.zff;

public final class zzd extends zza implements zzf {
    public zzd(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.inappreview.protocol.IInAppReviewService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void zzc(String str, Bundle bundle, zzh zzhVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        int i = zff.a;
        parcelZza.writeInt(1);
        bundle.writeToParcel(parcelZza, 0);
        parcelZza.writeStrongBinder(zzhVar);
        zzb(2, parcelZza);
    }
}
