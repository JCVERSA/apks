package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdz;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;
import java.util.ArrayList;
import java.util.List;

public final class zzbpj extends zzaxx implements IInterface {
    public zzbpj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    public final double zze() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(7, zza());
        double d = parcelZzcZ.readDouble();
        parcelZzcZ.recycle();
        return d;
    }

    public final Bundle zzf() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(15, zza());
        Bundle bundle = (Bundle) aue.a(parcelZzcZ, Bundle.CREATOR);
        parcelZzcZ.recycle();
        return bundle;
    }

    public final zzea zzg() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(17, zza());
        zzea zzeaVarZzb = zzdz.zzb(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzeaVarZzb;
    }

    public final zzbfm zzh() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(19, zza());
        zzbfm zzbfmVarZzj = zzbfl.zzj(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzbfmVarZzj;
    }

    public final zzbft zzi() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(5, zza());
        zzbft zzbftVarZzg = zzbfs.zzg(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzbftVarZzg;
    }

    public final IObjectWrapper zzj() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(18, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    public final IObjectWrapper zzk() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(20, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    public final IObjectWrapper zzl() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(21, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    public final String zzm() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(4, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    public final String zzn() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(6, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    public final String zzo() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(2, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    public final String zzp() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(9, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    public final String zzq() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(8, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    public final List zzr() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(3, zza());
        ArrayList arrayListB = aue.b(parcelZzcZ);
        parcelZzcZ.recycle();
        return arrayListB;
    }

    public final void zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(11, parcelZza);
    }

    public final void zzt() throws RemoteException {
        zzda(10, zza());
    }

    public final void zzu(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(12, parcelZza);
    }

    public final void zzv(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, iObjectWrapper2);
        aue.f(parcelZza, iObjectWrapper3);
        zzda(22, parcelZza);
    }

    public final void zzw(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(16, parcelZza);
    }

    public final boolean zzx() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(14, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    public final boolean zzy() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(13, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }
}
