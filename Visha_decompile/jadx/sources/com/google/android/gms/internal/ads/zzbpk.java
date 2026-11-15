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

public final class zzbpk extends zzaxx implements IInterface {
    public zzbpk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    public final Bundle zze() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(13, zza());
        Bundle bundle = (Bundle) aue.a(parcelZzcZ, Bundle.CREATOR);
        parcelZzcZ.recycle();
        return bundle;
    }

    public final zzea zzf() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(16, zza());
        zzea zzeaVarZzb = zzdz.zzb(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzeaVarZzb;
    }

    public final zzbfm zzg() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(19, zza());
        zzbfm zzbfmVarZzj = zzbfl.zzj(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzbfmVarZzj;
    }

    public final zzbft zzh() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(5, zza());
        zzbft zzbftVarZzg = zzbfs.zzg(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzbftVarZzg;
    }

    public final IObjectWrapper zzi() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(15, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    public final IObjectWrapper zzj() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(20, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    public final IObjectWrapper zzk() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(21, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    public final String zzl() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(7, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
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

    public final List zzp() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(3, zza());
        ArrayList arrayListB = aue.b(parcelZzcZ);
        parcelZzcZ.recycle();
        return arrayListB;
    }

    public final void zzq(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(9, parcelZza);
    }

    public final void zzr() throws RemoteException {
        zzda(8, zza());
    }

    public final void zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(10, parcelZza);
    }

    public final void zzt(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, iObjectWrapper2);
        aue.f(parcelZza, iObjectWrapper3);
        zzda(22, parcelZza);
    }

    public final void zzu(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(14, parcelZza);
    }

    public final boolean zzv() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(12, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    public final boolean zzw() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(11, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }
}
