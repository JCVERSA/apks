package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdz;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public final class zzbfo extends zzaxx implements zzbfq {
    public zzbfo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override
    public final float zze() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(2, zza());
        float f = parcelZzcZ.readFloat();
        parcelZzcZ.recycle();
        return f;
    }

    @Override
    public final float zzf() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(6, zza());
        float f = parcelZzcZ.readFloat();
        parcelZzcZ.recycle();
        return f;
    }

    @Override
    public final float zzg() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(5, zza());
        float f = parcelZzcZ.readFloat();
        parcelZzcZ.recycle();
        return f;
    }

    @Override
    public final zzea zzh() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(7, zza());
        zzea zzeaVarZzb = zzdz.zzb(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzeaVarZzb;
    }

    @Override
    public final IObjectWrapper zzi() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(4, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(3, parcelZza);
    }

    @Override
    public final boolean zzk() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(10, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzl() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(8, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final void zzm(zzbhb zzbhbVar) throws RemoteException {
        throw null;
    }
}
