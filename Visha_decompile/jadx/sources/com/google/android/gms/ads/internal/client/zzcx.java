package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzaxy;
import com.google.android.gms.internal.ads.zzbln;
import com.google.android.gms.internal.ads.zzblo;
import com.google.android.gms.internal.ads.zzbox;
import com.google.android.gms.internal.ads.zzboy;
import defpackage.aue;
import java.util.List;

public abstract class zzcx extends zzaxy implements zzcy {
    public zzcx() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzdk zzdiVar;
        switch (i) {
            case 1:
                zzk();
                parcel2.writeNoException();
                return true;
            case 2:
                float f = parcel.readFloat();
                aue.c(parcel);
                zzq(f);
                parcel2.writeNoException();
                return true;
            case 3:
                String string = parcel.readString();
                aue.c(parcel);
                zzr(string);
                parcel2.writeNoException();
                return true;
            case 4:
                boolean zG = aue.g(parcel);
                aue.c(parcel);
                zzp(zG);
                parcel2.writeNoException();
                return true;
            case 5:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String string2 = parcel.readString();
                aue.c(parcel);
                zzn(iObjectWrapperAsInterface, string2);
                parcel2.writeNoException();
                return true;
            case 6:
                String string3 = parcel.readString();
                IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                aue.c(parcel);
                zzl(string3, iObjectWrapperAsInterface2);
                parcel2.writeNoException();
                return true;
            case 7:
                float fZze = zze();
                parcel2.writeNoException();
                parcel2.writeFloat(fZze);
                return true;
            case 8:
                boolean zZzv = zzv();
                parcel2.writeNoException();
                ClassLoader classLoader = aue.a;
                parcel2.writeInt(zZzv ? 1 : 0);
                return true;
            case 9:
                String strZzf = zzf();
                parcel2.writeNoException();
                parcel2.writeString(strZzf);
                return true;
            case 10:
                String string4 = parcel.readString();
                aue.c(parcel);
                zzh(string4);
                parcel2.writeNoException();
                return true;
            case 11:
                zzboy zzboyVarZzf = zzbox.zzf(parcel.readStrongBinder());
                aue.c(parcel);
                zzo(zzboyVarZzf);
                parcel2.writeNoException();
                return true;
            case 12:
                zzblo zzbloVarZzc = zzbln.zzc(parcel.readStrongBinder());
                aue.c(parcel);
                zzs(zzbloVarZzc);
                parcel2.writeNoException();
                return true;
            case 13:
                List listZzg = zzg();
                parcel2.writeNoException();
                parcel2.writeTypedList(listZzg);
                return true;
            case 14:
                zzfr zzfrVar = (zzfr) aue.a(parcel, zzfr.CREATOR);
                aue.c(parcel);
                zzu(zzfrVar);
                parcel2.writeNoException();
                return true;
            case 15:
                zzi();
                parcel2.writeNoException();
                return true;
            case 16:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzdiVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
                    zzdiVar = iInterfaceQueryLocalInterface instanceof zzdk ? (zzdk) iInterfaceQueryLocalInterface : new zzdi(strongBinder);
                }
                aue.c(parcel);
                zzm(zzdiVar);
                parcel2.writeNoException();
                return true;
            case 17:
                boolean zG2 = aue.g(parcel);
                aue.c(parcel);
                zzj(zG2);
                parcel2.writeNoException();
                return true;
            case 18:
                String string5 = parcel.readString();
                aue.c(parcel);
                zzt(string5);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
