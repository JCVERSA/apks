package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.aue;

public abstract class zzbqq extends zzaxy implements zzbqr {
    public zzbqq() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzbpn zzbpnVarZzb = zzbpm.zzb(parcel.readStrongBinder());
            aue.c(parcel);
            zzg(zzbpnVarZzb);
        } else if (i == 2) {
            String string = parcel.readString();
            aue.c(parcel);
            zze(string);
        } else {
            if (i != 3) {
                return false;
            }
            zze zzeVar = (zze) aue.a(parcel, zze.CREATOR);
            aue.c(parcel);
            zzf(zzeVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
