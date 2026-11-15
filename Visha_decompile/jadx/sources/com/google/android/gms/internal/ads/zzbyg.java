package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;
import java.util.List;

public final class zzbyg extends zzaxx implements zzbyi {
    public zzbyg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override
    public final IObjectWrapper zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, iObjectWrapper2);
        parcelZza.writeString(str);
        aue.f(parcelZza, iObjectWrapper3);
        Parcel parcelZzcZ = zzcZ(11, parcelZza);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override
    public final void zzf(IObjectWrapper iObjectWrapper, zzbym zzbymVar, zzbyf zzbyfVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        aue.d(parcelZza, zzbymVar);
        aue.f(parcelZza, zzbyfVar);
        zzda(1, parcelZza);
    }

    @Override
    public final void zzg(zzbtq zzbtqVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzbtn zzbtnVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzi(List list, IObjectWrapper iObjectWrapper, zzbtn zzbtnVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(8, parcelZza);
    }

    @Override
    public final void zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzbtn zzbtnVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzm(List list, IObjectWrapper iObjectWrapper, zzbtn zzbtnVar) throws RemoteException {
        throw null;
    }
}
