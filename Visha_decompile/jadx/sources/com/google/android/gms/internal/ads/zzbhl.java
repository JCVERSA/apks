package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdc;
import com.google.android.gms.ads.internal.client.zzdg;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdw;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzdz;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;
import java.util.ArrayList;
import java.util.List;

public final class zzbhl extends zzaxx implements zzbhn {
    public zzbhl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override
    public final void zzA() throws RemoteException {
        zzda(28, zza());
    }

    @Override
    public final void zzB(Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, bundle);
        zzda(33, parcelZza);
    }

    @Override
    public final void zzC(Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, bundle);
        zzda(17, parcelZza);
    }

    @Override
    public final void zzD() throws RemoteException {
        zzda(27, zza());
    }

    @Override
    public final void zzE(zzdc zzdcVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzdcVar);
        zzda(26, parcelZza);
    }

    @Override
    public final void zzF(zzdq zzdqVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzdqVar);
        zzda(32, parcelZza);
    }

    @Override
    public final void zzG(zzbhk zzbhkVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbhkVar);
        zzda(21, parcelZza);
    }

    @Override
    public final boolean zzH() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(30, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzI() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(24, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzJ(Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, bundle);
        Parcel parcelZzcZ = zzcZ(16, parcelZza);
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
    public final Bundle zzf() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(20, zza());
        Bundle bundle = (Bundle) aue.a(parcelZzcZ, Bundle.CREATOR);
        parcelZzcZ.recycle();
        return bundle;
    }

    @Override
    public final zzdx zzg() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(31, zza());
        zzdx zzdxVarZzb = zzdw.zzb(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzdxVarZzb;
    }

    @Override
    public final zzea zzh() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(11, zza());
        zzea zzeaVarZzb = zzdz.zzb(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzeaVarZzb;
    }

    @Override
    public final zzbfm zzi() throws RemoteException {
        zzbfm zzbfkVar;
        Parcel parcelZzcZ = zzcZ(14, zza());
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzbfkVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzbfkVar = iInterfaceQueryLocalInterface instanceof zzbfm ? (zzbfm) iInterfaceQueryLocalInterface : new zzbfk(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzbfkVar;
    }

    @Override
    public final zzbfq zzj() throws RemoteException {
        zzbfq zzbfoVar;
        Parcel parcelZzcZ = zzcZ(29, zza());
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzbfoVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            zzbfoVar = iInterfaceQueryLocalInterface instanceof zzbfq ? (zzbfq) iInterfaceQueryLocalInterface : new zzbfo(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzbfoVar;
    }

    @Override
    public final zzbft zzk() throws RemoteException {
        zzbft zzbfrVar;
        Parcel parcelZzcZ = zzcZ(5, zza());
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzbfrVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzbfrVar = iInterfaceQueryLocalInterface instanceof zzbft ? (zzbft) iInterfaceQueryLocalInterface : new zzbfr(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzbfrVar;
    }

    @Override
    public final IObjectWrapper zzl() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(19, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override
    public final IObjectWrapper zzm() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(18, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override
    public final String zzn() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(7, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzo() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(4, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzp() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(6, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzq() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(2, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzr() throws RemoteException {
        throw null;
    }

    @Override
    public final String zzs() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(10, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzt() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(9, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final List zzu() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(3, zza());
        ArrayList arrayListB = aue.b(parcelZzcZ);
        parcelZzcZ.recycle();
        return arrayListB;
    }

    @Override
    public final List zzv() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(23, zza());
        ArrayList arrayListB = aue.b(parcelZzcZ);
        parcelZzcZ.recycle();
        return arrayListB;
    }

    @Override
    public final void zzw() throws RemoteException {
        zzda(22, zza());
    }

    @Override
    public final void zzx() throws RemoteException {
        zzda(13, zza());
    }

    @Override
    public final void zzy(zzdg zzdgVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzdgVar);
        zzda(25, parcelZza);
    }

    @Override
    public final void zzz(Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, bundle);
        zzda(15, parcelZza);
    }
}
