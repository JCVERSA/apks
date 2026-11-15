package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzaxy;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzbgr;
import com.google.android.gms.internal.ads.zzbgt;
import com.google.android.gms.internal.ads.zzbgu;
import com.google.android.gms.internal.ads.zzbgw;
import com.google.android.gms.internal.ads.zzbgx;
import com.google.android.gms.internal.ads.zzbgz;
import com.google.android.gms.internal.ads.zzbha;
import com.google.android.gms.internal.ads.zzbhd;
import com.google.android.gms.internal.ads.zzbhe;
import com.google.android.gms.internal.ads.zzbhg;
import com.google.android.gms.internal.ads.zzbhh;
import com.google.android.gms.internal.ads.zzblt;
import com.google.android.gms.internal.ads.zzbmb;
import com.google.android.gms.internal.ads.zzbmc;
import defpackage.aue;

public abstract class zzbs extends zzaxy implements zzbt {
    public zzbs() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbk zzbiVar = null;
        zzcp zzcpVar = null;
        switch (i) {
            case 1:
                zzbq zzbqVarZze = zze();
                parcel2.writeNoException();
                aue.f(parcel2, zzbqVarZze);
                return true;
            case 2:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzbiVar = iInterfaceQueryLocalInterface instanceof zzbk ? (zzbk) iInterfaceQueryLocalInterface : new zzbi(strongBinder);
                }
                aue.c(parcel);
                zzl(zzbiVar);
                parcel2.writeNoException();
                return true;
            case 3:
                zzbgr zzbgrVarZzb = zzbgq.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzf(zzbgrVarZzb);
                parcel2.writeNoException();
                return true;
            case 4:
                zzbgu zzbguVarZzb = zzbgt.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzg(zzbguVarZzb);
                parcel2.writeNoException();
                return true;
            case 5:
                String string = parcel.readString();
                zzbha zzbhaVarZzb = zzbgz.zzb(parcel.readStrongBinder());
                zzbgx zzbgxVarZzb = zzbgw.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzh(string, zzbhaVarZzb, zzbgxVarZzb);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbfi zzbfiVar = (zzbfi) aue.a(parcel, zzbfi.CREATOR);
                aue.c(parcel);
                zzo(zzbfiVar);
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzcpVar = iInterfaceQueryLocalInterface2 instanceof zzcp ? (zzcp) iInterfaceQueryLocalInterface2 : new zzcp(strongBinder2);
                }
                aue.c(parcel);
                zzq(zzcpVar);
                parcel2.writeNoException();
                return true;
            case 8:
                zzbhe zzbheVarZzb = zzbhd.zzb(parcel.readStrongBinder());
                zzr zzrVar = (zzr) aue.a(parcel, zzr.CREATOR);
                aue.c(parcel);
                zzj(zzbheVarZzb, zzrVar);
                parcel2.writeNoException();
                return true;
            case 9:
                PublisherAdViewOptions publisherAdViewOptions = (PublisherAdViewOptions) aue.a(parcel, PublisherAdViewOptions.CREATOR);
                aue.c(parcel);
                zzp(publisherAdViewOptions);
                parcel2.writeNoException();
                return true;
            case 10:
                zzbhh zzbhhVarZzb = zzbhg.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzk(zzbhhVarZzb);
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zzblt zzbltVar = (zzblt) aue.a(parcel, zzblt.CREATOR);
                aue.c(parcel);
                zzn(zzbltVar);
                parcel2.writeNoException();
                return true;
            case 14:
                zzbmc zzbmcVarZzb = zzbmb.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzi(zzbmcVarZzb);
                parcel2.writeNoException();
                return true;
            case 15:
                AdManagerAdViewOptions adManagerAdViewOptions = (AdManagerAdViewOptions) aue.a(parcel, AdManagerAdViewOptions.CREATOR);
                aue.c(parcel);
                zzm(adManagerAdViewOptions);
                parcel2.writeNoException();
                return true;
        }
    }
}
