package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdz;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;
import java.util.ArrayList;
import java.util.List;

public final class zzbpl extends zzaxx implements zzbpn {
    public zzbpl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override
    public final boolean zzA() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(18, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzB() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(17, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final double zze() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(8, zza());
        double d = parcelZzcZ.readDouble();
        parcelZzcZ.recycle();
        return d;
    }

    @Override
    public final float zzf() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(23, zza());
        float f = parcelZzcZ.readFloat();
        parcelZzcZ.recycle();
        return f;
    }

    @Override
    public final float zzg() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(25, zza());
        float f = parcelZzcZ.readFloat();
        parcelZzcZ.recycle();
        return f;
    }

    @Override
    public final float zzh() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(24, zza());
        float f = parcelZzcZ.readFloat();
        parcelZzcZ.recycle();
        return f;
    }

    @Override
    public final Bundle zzi() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(16, zza());
        Bundle bundle = (Bundle) aue.a(parcelZzcZ, Bundle.CREATOR);
        parcelZzcZ.recycle();
        return bundle;
    }

    @Override
    public final zzea zzj() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(11, zza());
        zzea zzeaVarZzb = zzdz.zzb(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzeaVarZzb;
    }

    @Override
    public final zzbfm zzk() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(12, zza());
        zzbfm zzbfmVarZzj = zzbfl.zzj(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzbfmVarZzj;
    }

    @Override
    public final zzbft zzl() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(5, zza());
        zzbft zzbftVarZzg = zzbfs.zzg(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzbftVarZzg;
    }

    @Override
    public final IObjectWrapper zzm() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(13, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override
    public final IObjectWrapper zzn() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(14, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override
    public final IObjectWrapper zzo() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(15, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override
    public final String zzp() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(7, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzq() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(4, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzr() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(6, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzs() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(2, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzt() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(10, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzu() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(9, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final List zzv() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(3, zza());
        ArrayList arrayListB = aue.b(parcelZzcZ);
        parcelZzcZ.recycle();
        return arrayListB;
    }

    @Override
    public final void zzw(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(20, parcelZza);
    }

    @Override
    public final void zzx() throws RemoteException {
        zzda(19, zza());
    }

    @Override
    public final void zzy(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, iObjectWrapper2);
        aue.f(parcelZza, iObjectWrapper3);
        zzda(21, parcelZza);
    }

    @Override
    public final void zzz(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(22, parcelZza);
    }
}
