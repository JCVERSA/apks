package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;
import java.util.List;

public abstract class zzbgm extends zzaxy implements zzbgn {
    public zzbgm() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static zzbgn zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return iInterfaceQueryLocalInterface instanceof zzbgn ? (zzbgn) iInterfaceQueryLocalInterface : new zzbgl(iBinder);
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                String string = parcel.readString();
                aue.c(parcel);
                String strZzj = zzj(string);
                parcel2.writeNoException();
                parcel2.writeString(strZzj);
                return true;
            case 2:
                String string2 = parcel.readString();
                aue.c(parcel);
                zzbft zzbftVarZzg = zzg(string2);
                parcel2.writeNoException();
                aue.f(parcel2, zzbftVarZzg);
                return true;
            case 3:
                List<String> listZzk = zzk();
                parcel2.writeNoException();
                parcel2.writeStringList(listZzk);
                return true;
            case 4:
                String strZzi = zzi();
                parcel2.writeNoException();
                parcel2.writeString(strZzi);
                return true;
            case 5:
                String string3 = parcel.readString();
                aue.c(parcel);
                zzn(string3);
                parcel2.writeNoException();
                return true;
            case 6:
                zzo();
                parcel2.writeNoException();
                return true;
            case 7:
                zzea zzeaVarZze = zze();
                parcel2.writeNoException();
                aue.f(parcel2, zzeaVarZze);
                return true;
            case 8:
                zzl();
                parcel2.writeNoException();
                return true;
            case 9:
                IObjectWrapper iObjectWrapperZzh = zzh();
                parcel2.writeNoException();
                aue.f(parcel2, iObjectWrapperZzh);
                return true;
            case 10:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                aue.c(parcel);
                boolean zZzs = zzs(iObjectWrapperAsInterface);
                parcel2.writeNoException();
                parcel2.writeInt(zZzs ? 1 : 0);
                return true;
            case 11:
                parcel2.writeNoException();
                aue.f(parcel2, null);
                return true;
            case 12:
                boolean zZzq = zzq();
                parcel2.writeNoException();
                ClassLoader classLoader = aue.a;
                parcel2.writeInt(zZzq ? 1 : 0);
                return true;
            case 13:
                boolean zZzt = zzt();
                parcel2.writeNoException();
                ClassLoader classLoader2 = aue.a;
                parcel2.writeInt(zZzt ? 1 : 0);
                return true;
            case 14:
                IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                aue.c(parcel);
                zzp(iObjectWrapperAsInterface2);
                parcel2.writeNoException();
                return true;
            case 15:
                zzm();
                parcel2.writeNoException();
                return true;
            case 16:
                zzbfq zzbfqVarZzf = zzf();
                parcel2.writeNoException();
                aue.f(parcel2, zzbfqVarZzf);
                return true;
            case 17:
                IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                aue.c(parcel);
                boolean zZzr = zzr(iObjectWrapperAsInterface3);
                parcel2.writeNoException();
                parcel2.writeInt(zZzr ? 1 : 0);
                return true;
            default:
                return false;
        }
    }
}
