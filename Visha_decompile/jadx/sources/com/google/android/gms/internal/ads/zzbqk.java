package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public abstract class zzbqk extends zzaxy implements zzbql {
    public zzbqk() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            aue.c(parcel);
            zzg(iObjectWrapperAsInterface);
        } else if (i == 2) {
            String string = parcel.readString();
            aue.c(parcel);
            zze(string);
        } else if (i == 3) {
            zze zzeVar = (zze) aue.a(parcel, zze.CREATOR);
            aue.c(parcel);
            zzf(zzeVar);
        } else {
            if (i != 4) {
                return false;
            }
            zzbph zzbphVarZzb = zzbpg.zzb(parcel.readStrongBinder());
            aue.c(parcel);
            zzh(zzbphVarZzb);
        }
        parcel2.writeNoException();
        return true;
    }
}
