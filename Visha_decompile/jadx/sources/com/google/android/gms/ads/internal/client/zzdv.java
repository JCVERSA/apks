package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxx;
import defpackage.aue;
import java.util.ArrayList;
import java.util.List;

public final class zzdv extends zzaxx implements zzdx {
    public zzdv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override
    public final Bundle zze() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(5, zza());
        Bundle bundle = (Bundle) aue.a(parcelZzcZ, Bundle.CREATOR);
        parcelZzcZ.recycle();
        return bundle;
    }

    @Override
    public final zzv zzf() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(4, zza());
        zzv zzvVar = (zzv) aue.a(parcelZzcZ, zzv.CREATOR);
        parcelZzcZ.recycle();
        return zzvVar;
    }

    @Override
    public final String zzg() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(1, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzh() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(6, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzi() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(2, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final List zzj() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(3, zza());
        ArrayList arrayListCreateTypedArrayList = parcelZzcZ.createTypedArrayList(zzv.CREATOR);
        parcelZzcZ.recycle();
        return arrayListCreateTypedArrayList;
    }
}
