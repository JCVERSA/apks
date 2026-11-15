package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxx;
import defpackage.aue;

public final class zzeb extends zzaxx implements zzed {
    public zzeb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override
    public final void zze() throws RemoteException {
        zzda(4, zza());
    }

    @Override
    public final void zzf(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        ClassLoader classLoader = aue.a;
        parcelZza.writeInt(z ? 1 : 0);
        zzda(5, parcelZza);
    }

    @Override
    public final void zzg() throws RemoteException {
        zzda(3, zza());
    }

    @Override
    public final void zzh() throws RemoteException {
        zzda(2, zza());
    }

    @Override
    public final void zzi() throws RemoteException {
        zzda(1, zza());
    }
}
