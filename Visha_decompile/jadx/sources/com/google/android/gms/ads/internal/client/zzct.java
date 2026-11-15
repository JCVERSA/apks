package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxx;
import com.google.android.gms.internal.ads.zzbox;
import com.google.android.gms.internal.ads.zzboy;
import defpackage.aue;

public final class zzct extends zzaxx implements zzcv {
    public zzct(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.ILiteSdkInfo");
    }

    @Override
    public final zzboy getAdapterCreator() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(2, zza());
        zzboy zzboyVarZzf = zzbox.zzf(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzboyVarZzf;
    }

    @Override
    public final zzex getLiteSdkVersion() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(1, zza());
        zzex zzexVar = (zzex) aue.a(parcelZzcZ, zzex.CREATOR);
        parcelZzcZ.recycle();
        return zzexVar;
    }
}
