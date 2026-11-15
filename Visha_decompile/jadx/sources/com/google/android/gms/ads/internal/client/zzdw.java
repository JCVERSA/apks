package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxy;
import defpackage.aue;
import java.util.List;

public abstract class zzdw extends zzaxy implements zzdx {
    public zzdw() {
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    public static zzdx zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
        return iInterfaceQueryLocalInterface instanceof zzdx ? (zzdx) iInterfaceQueryLocalInterface : new zzdv(iBinder);
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                String strZzg = zzg();
                parcel2.writeNoException();
                parcel2.writeString(strZzg);
                return true;
            case 2:
                String strZzi = zzi();
                parcel2.writeNoException();
                parcel2.writeString(strZzi);
                return true;
            case 3:
                List listZzj = zzj();
                parcel2.writeNoException();
                parcel2.writeTypedList(listZzj);
                return true;
            case 4:
                zzv zzvVarZzf = zzf();
                parcel2.writeNoException();
                aue.e(parcel2, zzvVarZzf);
                return true;
            case 5:
                Bundle bundleZze = zze();
                parcel2.writeNoException();
                aue.e(parcel2, bundleZze);
                return true;
            case 6:
                String strZzh = zzh();
                parcel2.writeNoException();
                parcel2.writeString(strZzh);
                return true;
            default:
                return false;
        }
    }
}
