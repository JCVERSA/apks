package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.aue;

public final class zzbab extends zzaxx implements zzbad {
    public zzbab(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override
    public final void zzb(int i) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzda(2, parcelZza);
    }

    @Override
    public final void zzc(zze zzeVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzeVar);
        zzda(3, parcelZza);
    }

    @Override
    public final void zzd(zzbaa zzbaaVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbaaVar);
        zzda(1, parcelZza);
    }
}
