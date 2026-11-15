package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxx;
import defpackage.aue;

public final class zzdy extends zzaxx implements zzea {
    public zzdy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override
    public final float zze() throws RemoteException {
        throw null;
    }

    @Override
    public final float zzf() throws RemoteException {
        throw null;
    }

    @Override
    public final float zzg() throws RemoteException {
        throw null;
    }

    @Override
    public final int zzh() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(5, zza());
        int i = parcelZzcZ.readInt();
        parcelZzcZ.recycle();
        return i;
    }

    @Override
    public final zzed zzi() throws RemoteException {
        zzed zzebVar;
        Parcel parcelZzcZ = zzcZ(11, zza());
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzebVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            zzebVar = iInterfaceQueryLocalInterface instanceof zzed ? (zzed) iInterfaceQueryLocalInterface : new zzeb(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzebVar;
    }

    @Override
    public final void zzj(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        ClassLoader classLoader = aue.a;
        parcelZza.writeInt(z ? 1 : 0);
        zzda(3, parcelZza);
    }

    @Override
    public final void zzk() throws RemoteException {
        zzda(2, zza());
    }

    @Override
    public final void zzl() throws RemoteException {
        zzda(1, zza());
    }

    @Override
    public final void zzm(zzed zzedVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzedVar);
        zzda(8, parcelZza);
    }

    @Override
    public final void zzn() throws RemoteException {
        zzda(13, zza());
    }

    @Override
    public final boolean zzo() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(12, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzp() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(10, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzq() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(4, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }
}
