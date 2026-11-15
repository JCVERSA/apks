package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.aue;

public final class zzbqp extends zzaxx implements zzbqr {
    public zzbqp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override
    public final void zze(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString("Adapter returned null.");
        zzda(2, parcelZza);
    }

    @Override
    public final void zzf(zze zzeVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzeVar);
        zzda(3, parcelZza);
    }

    @Override
    public final void zzg(zzbpn zzbpnVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbpnVar);
        zzda(1, parcelZza);
    }
}
