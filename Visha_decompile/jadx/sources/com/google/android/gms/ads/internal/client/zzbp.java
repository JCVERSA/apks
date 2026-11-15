package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxy;
import defpackage.aue;

public abstract class zzbp extends zzaxy implements zzbq {
    public zzbp() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzm zzmVar = (zzm) aue.a(parcel, zzm.CREATOR);
            aue.c(parcel);
            zzg(zzmVar);
            parcel2.writeNoException();
        } else if (i == 2) {
            String strZze = zze();
            parcel2.writeNoException();
            parcel2.writeString(strZze);
        } else if (i == 3) {
            boolean zZzi = zzi();
            parcel2.writeNoException();
            ClassLoader classLoader = aue.a;
            parcel2.writeInt(zZzi ? 1 : 0);
        } else if (i == 4) {
            String strZzf = zzf();
            parcel2.writeNoException();
            parcel2.writeString(strZzf);
        } else {
            if (i != 5) {
                return false;
            }
            zzm zzmVar2 = (zzm) aue.a(parcel, zzm.CREATOR);
            int i3 = parcel.readInt();
            aue.c(parcel);
            zzh(zzmVar2, i3);
            parcel2.writeNoException();
        }
        return true;
    }
}
