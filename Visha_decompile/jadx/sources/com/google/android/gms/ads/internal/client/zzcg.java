package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxy;
import com.google.android.gms.internal.ads.zzbaa;
import com.google.android.gms.internal.ads.zzbox;
import com.google.android.gms.internal.ads.zzboy;
import com.google.android.gms.internal.ads.zzbwd;
import defpackage.aue;
import java.util.ArrayList;

public abstract class zzcg extends zzaxy implements zzch {
    public zzcg() {
        super("com.google.android.gms.ads.internal.client.IAdPreloader");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzce zzccVar;
        switch (i) {
            case 1:
                ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(zzfp.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzccVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloadCallback");
                    zzccVar = iInterfaceQueryLocalInterface instanceof zzce ? (zzce) iInterfaceQueryLocalInterface : new zzcc(strongBinder);
                }
                aue.c(parcel);
                zzi(arrayListCreateTypedArrayList, zzccVar);
                parcel2.writeNoException();
                return true;
            case 2:
                String string = parcel.readString();
                aue.c(parcel);
                boolean zZzl = zzl(string);
                parcel2.writeNoException();
                parcel2.writeInt(zZzl ? 1 : 0);
                return true;
            case 3:
                String string2 = parcel.readString();
                aue.c(parcel);
                zzbwd zzbwdVarZzg = zzg(string2);
                parcel2.writeNoException();
                aue.f(parcel2, zzbwdVarZzg);
                return true;
            case 4:
                String string3 = parcel.readString();
                aue.c(parcel);
                boolean zZzj = zzj(string3);
                parcel2.writeNoException();
                parcel2.writeInt(zZzj ? 1 : 0);
                return true;
            case 5:
                String string4 = parcel.readString();
                aue.c(parcel);
                zzbaa zzbaaVarZze = zze(string4);
                parcel2.writeNoException();
                aue.f(parcel2, zzbaaVarZze);
                return true;
            case 6:
                String string5 = parcel.readString();
                aue.c(parcel);
                boolean zZzk = zzk(string5);
                parcel2.writeNoException();
                parcel2.writeInt(zZzk ? 1 : 0);
                return true;
            case 7:
                String string6 = parcel.readString();
                aue.c(parcel);
                zzbx zzbxVarZzf = zzf(string6);
                parcel2.writeNoException();
                aue.f(parcel2, zzbxVarZzf);
                return true;
            case 8:
                zzboy zzboyVarZzf = zzbox.zzf(parcel.readStrongBinder());
                aue.c(parcel);
                zzh(zzboyVarZzf);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
