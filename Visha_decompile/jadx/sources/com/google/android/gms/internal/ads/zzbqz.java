package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.aue;

public abstract class zzbqz extends zzaxy implements zzbra {
    public zzbqz() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String string = parcel.readString();
            aue.c(parcel);
            zze(string);
        } else if (i == 2) {
            String string2 = parcel.readString();
            aue.c(parcel);
            zzf(string2);
        } else {
            if (i != 3) {
                return false;
            }
            zze zzeVar = (zze) aue.a(parcel, zze.CREATOR);
            aue.c(parcel);
            zzg(zzeVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
