package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;
import java.util.ArrayList;
import java.util.List;

public final class zzbgl extends zzaxx implements zzbgn {
    public zzbgl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override
    public final zzea zze() throws RemoteException {
        throw null;
    }

    @Override
    public final zzbfq zzf() throws RemoteException {
        zzbfq zzbfoVar;
        Parcel parcelZzcZ = zzcZ(16, zza());
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
    public final zzbft zzg(String str) throws RemoteException {
        zzbft zzbfrVar;
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzcZ = zzcZ(2, parcelZza);
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
    public final IObjectWrapper zzh() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(9, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override
    public final String zzi() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(4, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzj(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzcZ = zzcZ(1, parcelZza);
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final List zzk() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(3, zza());
        ArrayList<String> arrayListCreateStringArrayList = parcelZzcZ.createStringArrayList();
        parcelZzcZ.recycle();
        return arrayListCreateStringArrayList;
    }

    @Override
    public final void zzl() throws RemoteException {
        zzda(8, zza());
    }

    @Override
    public final void zzm() throws RemoteException {
        zzda(15, zza());
    }

    @Override
    public final void zzn(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzda(5, parcelZza);
    }

    @Override
    public final void zzo() throws RemoteException {
        zzda(6, zza());
    }

    @Override
    public final void zzp(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(14, parcelZza);
    }

    @Override
    public final boolean zzq() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(12, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        Parcel parcelZzcZ = zzcZ(17, parcelZza);
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        Parcel parcelZzcZ = zzcZ(10, parcelZza);
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzt() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(13, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }
}
