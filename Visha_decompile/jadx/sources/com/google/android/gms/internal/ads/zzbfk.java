package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;
import java.util.ArrayList;
import java.util.List;

public final class zzbfk extends zzaxx implements zzbfm {
    public zzbfk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override
    public final String zzg() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(2, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final List zzh() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(3, zza());
        ArrayList arrayListB = aue.b(parcelZzcZ);
        parcelZzcZ.recycle();
        return arrayListB;
    }
}
