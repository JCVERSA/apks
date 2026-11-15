package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdb;
import com.google.android.gms.ads.internal.client.zzdc;
import com.google.android.gms.ads.internal.client.zzdf;
import com.google.android.gms.ads.internal.client.zzdg;
import com.google.android.gms.ads.internal.client.zzdp;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;
import java.util.List;

public abstract class zzbhm extends zzaxy implements zzbhn {
    public zzbhm() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbhk zzbhiVar;
        switch (i) {
            case 2:
                String strZzq = zzq();
                parcel2.writeNoException();
                parcel2.writeString(strZzq);
                return true;
            case 3:
                List listZzu = zzu();
                parcel2.writeNoException();
                parcel2.writeList(listZzu);
                return true;
            case 4:
                String strZzo = zzo();
                parcel2.writeNoException();
                parcel2.writeString(strZzo);
                return true;
            case 5:
                zzbft zzbftVarZzk = zzk();
                parcel2.writeNoException();
                aue.f(parcel2, zzbftVarZzk);
                return true;
            case 6:
                String strZzp = zzp();
                parcel2.writeNoException();
                parcel2.writeString(strZzp);
                return true;
            case 7:
                String strZzn = zzn();
                parcel2.writeNoException();
                parcel2.writeString(strZzn);
                return true;
            case 8:
                double dZze = zze();
                parcel2.writeNoException();
                parcel2.writeDouble(dZze);
                return true;
            case 9:
                String strZzt = zzt();
                parcel2.writeNoException();
                parcel2.writeString(strZzt);
                return true;
            case 10:
                String strZzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(strZzs);
                return true;
            case 11:
                zzea zzeaVarZzh = zzh();
                parcel2.writeNoException();
                aue.f(parcel2, zzeaVarZzh);
                return true;
            case 12:
                String strZzr = zzr();
                parcel2.writeNoException();
                parcel2.writeString(strZzr);
                return true;
            case 13:
                zzx();
                parcel2.writeNoException();
                return true;
            case 14:
                zzbfm zzbfmVarZzi = zzi();
                parcel2.writeNoException();
                aue.f(parcel2, zzbfmVarZzi);
                return true;
            case 15:
                Bundle bundle = (Bundle) aue.a(parcel, Bundle.CREATOR);
                aue.c(parcel);
                zzz(bundle);
                parcel2.writeNoException();
                return true;
            case 16:
                Bundle bundle2 = (Bundle) aue.a(parcel, Bundle.CREATOR);
                aue.c(parcel);
                boolean zZzJ = zzJ(bundle2);
                parcel2.writeNoException();
                parcel2.writeInt(zZzJ ? 1 : 0);
                return true;
            case 17:
                Bundle bundle3 = (Bundle) aue.a(parcel, Bundle.CREATOR);
                aue.c(parcel);
                zzC(bundle3);
                parcel2.writeNoException();
                return true;
            case 18:
                IObjectWrapper iObjectWrapperZzm = zzm();
                parcel2.writeNoException();
                aue.f(parcel2, iObjectWrapperZzm);
                return true;
            case 19:
                IObjectWrapper iObjectWrapperZzl = zzl();
                parcel2.writeNoException();
                aue.f(parcel2, iObjectWrapperZzl);
                return true;
            case 20:
                Bundle bundleZzf = zzf();
                parcel2.writeNoException();
                aue.e(parcel2, bundleZzf);
                return true;
            case 21:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzbhiVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    zzbhiVar = iInterfaceQueryLocalInterface instanceof zzbhk ? (zzbhk) iInterfaceQueryLocalInterface : new zzbhi(strongBinder);
                }
                aue.c(parcel);
                zzG(zzbhiVar);
                parcel2.writeNoException();
                return true;
            case 22:
                zzw();
                parcel2.writeNoException();
                return true;
            case 23:
                List listZzv = zzv();
                parcel2.writeNoException();
                parcel2.writeList(listZzv);
                return true;
            case 24:
                boolean zZzI = zzI();
                parcel2.writeNoException();
                ClassLoader classLoader = aue.a;
                parcel2.writeInt(zZzI ? 1 : 0);
                return true;
            case 25:
                zzdg zzdgVarZzb = zzdf.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzy(zzdgVarZzb);
                parcel2.writeNoException();
                return true;
            case 26:
                zzdc zzdcVarZzb = zzdb.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzE(zzdcVarZzb);
                parcel2.writeNoException();
                return true;
            case 27:
                zzD();
                parcel2.writeNoException();
                return true;
            case 28:
                zzA();
                parcel2.writeNoException();
                return true;
            case 29:
                zzbfq zzbfqVarZzj = zzj();
                parcel2.writeNoException();
                aue.f(parcel2, zzbfqVarZzj);
                return true;
            case 30:
                boolean zZzH = zzH();
                parcel2.writeNoException();
                ClassLoader classLoader2 = aue.a;
                parcel2.writeInt(zZzH ? 1 : 0);
                return true;
            case 31:
                zzdx zzdxVarZzg = zzg();
                parcel2.writeNoException();
                aue.f(parcel2, zzdxVarZzg);
                return true;
            case 32:
                zzdq zzdqVarZzb = zzdp.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzF(zzdqVarZzb);
                parcel2.writeNoException();
                return true;
            case 33:
                Bundle bundle4 = (Bundle) aue.a(parcel, Bundle.CREATOR);
                aue.c(parcel);
                zzB(bundle4);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
