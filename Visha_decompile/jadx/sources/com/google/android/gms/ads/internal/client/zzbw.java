package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzaxy;
import com.google.android.gms.internal.ads.zzbac;
import com.google.android.gms.internal.ads.zzbad;
import com.google.android.gms.internal.ads.zzbdc;
import com.google.android.gms.internal.ads.zzbdd;
import com.google.android.gms.internal.ads.zzbtg;
import com.google.android.gms.internal.ads.zzbth;
import com.google.android.gms.internal.ads.zzbtj;
import com.google.android.gms.internal.ads.zzbtk;
import com.google.android.gms.internal.ads.zzbvp;
import com.google.android.gms.internal.ads.zzbvq;
import defpackage.aue;

public abstract class zzbw extends zzaxy implements zzbx {
    public zzbw() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzbx zzad(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return iInterfaceQueryLocalInterface instanceof zzbx ? (zzbx) iInterfaceQueryLocalInterface : new zzbv(iBinder);
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbk zzbiVar = null;
        zzcs zzcqVar = null;
        zzbn zzblVar = null;
        zzdq zzdoVar = null;
        zzcb zzbzVar = null;
        zzcp zzcpVar = null;
        zzbh zzbfVar = null;
        zzcl zzcjVar = null;
        switch (i) {
            case 1:
                IObjectWrapper iObjectWrapperZzn = zzn();
                parcel2.writeNoException();
                aue.f(parcel2, iObjectWrapperZzn);
                return true;
            case 2:
                zzx();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zZzaa = zzaa();
                parcel2.writeNoException();
                ClassLoader classLoader = aue.a;
                parcel2.writeInt(zZzaa ? 1 : 0);
                return true;
            case 4:
                zzm zzmVar = (zzm) aue.a(parcel, zzm.CREATOR);
                aue.c(parcel);
                boolean zZzab = zzab(zzmVar);
                parcel2.writeNoException();
                parcel2.writeInt(zZzab ? 1 : 0);
                return true;
            case 5:
                zzz();
                parcel2.writeNoException();
                return true;
            case 6:
                zzB();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzbiVar = iInterfaceQueryLocalInterface instanceof zzbk ? (zzbk) iInterfaceQueryLocalInterface : new zzbi(strongBinder);
                }
                aue.c(parcel);
                zzD(zzbiVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    zzcjVar = iInterfaceQueryLocalInterface2 instanceof zzcl ? (zzcl) iInterfaceQueryLocalInterface2 : new zzcj(strongBinder2);
                }
                aue.c(parcel);
                zzG(zzcjVar);
                parcel2.writeNoException();
                return true;
            case 9:
                zzX();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel2.writeNoException();
                return true;
            case 11:
                zzA();
                parcel2.writeNoException();
                return true;
            case 12:
                zzr zzrVarZzg = zzg();
                parcel2.writeNoException();
                aue.e(parcel2, zzrVarZzg);
                return true;
            case 13:
                zzr zzrVar = (zzr) aue.a(parcel, zzr.CREATOR);
                aue.c(parcel);
                zzF(zzrVar);
                parcel2.writeNoException();
                return true;
            case 14:
                zzbth zzbthVarZzb = zzbtg.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzM(zzbthVarZzb);
                parcel2.writeNoException();
                return true;
            case 15:
                zzbtk zzbtkVarZzb = zzbtj.zzb(parcel.readStrongBinder());
                String string = parcel.readString();
                aue.c(parcel);
                zzQ(zzbtkVarZzb, string);
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String strZzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(strZzs);
                return true;
            case 19:
                zzbdd zzbddVarZzb = zzbdc.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzO(zzbddVarZzb);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    zzbfVar = iInterfaceQueryLocalInterface3 instanceof zzbh ? (zzbh) iInterfaceQueryLocalInterface3 : new zzbf(strongBinder3);
                }
                aue.c(parcel);
                zzC(zzbfVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzcpVar = iInterfaceQueryLocalInterface4 instanceof zzcp ? (zzcp) iInterfaceQueryLocalInterface4 : new zzcp(strongBinder4);
                }
                aue.c(parcel);
                zzac(zzcpVar);
                parcel2.writeNoException();
                return true;
            case 22:
                boolean zG = aue.g(parcel);
                aue.c(parcel);
                zzN(zG);
                parcel2.writeNoException();
                return true;
            case 23:
                boolean zZzZ = zzZ();
                parcel2.writeNoException();
                ClassLoader classLoader2 = aue.a;
                parcel2.writeInt(zZzZ ? 1 : 0);
                return true;
            case 24:
                zzbvq zzbvqVarZzb = zzbvp.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzS(zzbvqVarZzb);
                parcel2.writeNoException();
                return true;
            case 25:
                String string2 = parcel.readString();
                aue.c(parcel);
                zzT(string2);
                parcel2.writeNoException();
                return true;
            case 26:
                zzea zzeaVarZzl = zzl();
                parcel2.writeNoException();
                aue.f(parcel2, zzeaVarZzl);
                return true;
            case 29:
                zzfw zzfwVar = (zzfw) aue.a(parcel, zzfw.CREATOR);
                aue.c(parcel);
                zzU(zzfwVar);
                parcel2.writeNoException();
                return true;
            case 30:
                zzee zzeeVar = (zzee) aue.a(parcel, zzee.CREATOR);
                aue.c(parcel);
                zzK(zzeeVar);
                parcel2.writeNoException();
                return true;
            case 31:
                String strZzr = zzr();
                parcel2.writeNoException();
                parcel2.writeString(strZzr);
                return true;
            case 32:
                zzcl zzclVarZzj = zzj();
                parcel2.writeNoException();
                aue.f(parcel2, zzclVarZzj);
                return true;
            case 33:
                zzbk zzbkVarZzi = zzi();
                parcel2.writeNoException();
                aue.f(parcel2, zzbkVarZzi);
                return true;
            case 34:
                boolean zG2 = aue.g(parcel);
                aue.c(parcel);
                zzL(zG2);
                parcel2.writeNoException();
                return true;
            case 35:
                String strZzt = zzt();
                parcel2.writeNoException();
                parcel2.writeString(strZzt);
                return true;
            case 36:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    zzbzVar = iInterfaceQueryLocalInterface5 instanceof zzcb ? (zzcb) iInterfaceQueryLocalInterface5 : new zzbz(strongBinder5);
                }
                aue.c(parcel);
                zzE(zzbzVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle bundleZzd = zzd();
                parcel2.writeNoException();
                aue.e(parcel2, bundleZzd);
                return true;
            case 38:
                String string3 = parcel.readString();
                aue.c(parcel);
                zzR(string3);
                parcel2.writeNoException();
                return true;
            case 39:
                zzx zzxVar = (zzx) aue.a(parcel, zzx.CREATOR);
                aue.c(parcel);
                zzI(zzxVar);
                parcel2.writeNoException();
                return true;
            case 40:
                zzbad zzbadVarZze = zzbac.zze(parcel.readStrongBinder());
                aue.c(parcel);
                zzH(zzbadVarZze);
                parcel2.writeNoException();
                return true;
            case 41:
                zzdx zzdxVarZzk = zzk();
                parcel2.writeNoException();
                aue.f(parcel2, zzdxVarZzk);
                return true;
            case 42:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    zzdoVar = iInterfaceQueryLocalInterface6 instanceof zzdq ? (zzdq) iInterfaceQueryLocalInterface6 : new zzdo(strongBinder6);
                }
                aue.c(parcel);
                zzP(zzdoVar);
                parcel2.writeNoException();
                return true;
            case 43:
                zzm zzmVar2 = (zzm) aue.a(parcel, zzm.CREATOR);
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    zzblVar = iInterfaceQueryLocalInterface7 instanceof zzbn ? (zzbn) iInterfaceQueryLocalInterface7 : new zzbl(strongBinder7);
                }
                aue.c(parcel);
                zzy(zzmVar2, zzblVar);
                parcel2.writeNoException();
                return true;
            case 44:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                aue.c(parcel);
                zzW(iObjectWrapperAsInterface);
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    zzcqVar = iInterfaceQueryLocalInterface8 instanceof zzcs ? (zzcs) iInterfaceQueryLocalInterface8 : new zzcq(strongBinder8);
                }
                aue.c(parcel);
                zzJ(zzcqVar);
                parcel2.writeNoException();
                return true;
            case 46:
                boolean zZzY = zzY();
                parcel2.writeNoException();
                ClassLoader classLoader3 = aue.a;
                parcel2.writeInt(zZzY ? 1 : 0);
                return true;
        }
    }
}
