package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public abstract class zzbqw extends zzaxy implements zzbqx {
    public zzbqw() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzbqx zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return iInterfaceQueryLocalInterface instanceof zzbqx ? (zzbqx) iInterfaceQueryLocalInterface : new zzbqv(iBinder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [com.google.android.gms.internal.ads.zzbra] */
    /* JADX WARN: Type inference failed for: r10v11, types: [com.google.android.gms.internal.ads.zzbqu] */
    /* JADX WARN: Type inference failed for: r10v7, types: [com.google.android.gms.internal.ads.zzbqu] */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.google.android.gms.internal.ads.zzbqw, com.google.android.gms.internal.ads.zzbqx] */
    /* JADX WARN: Type inference failed for: r5v20, types: [com.google.android.gms.internal.ads.zzbql] */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.google.android.gms.internal.ads.zzbql] */
    /* JADX WARN: Type inference failed for: r6v16, types: [com.google.android.gms.internal.ads.zzbqr] */
    /* JADX WARN: Type inference failed for: r6v27, types: [com.google.android.gms.internal.ads.zzbqr] */
    /* JADX WARN: Type inference failed for: r7v21, types: [com.google.android.gms.internal.ads.zzbqi] */
    /* JADX WARN: Type inference failed for: r7v7, types: [com.google.android.gms.internal.ads.zzbqo] */
    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        IInterface zzbqgVar = null;
        if (i == 1) {
            IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            String string = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) aue.a(parcel, creator);
            Bundle bundle2 = (Bundle) aue.a(parcel, creator);
            com.google.android.gms.ads.internal.client.zzr zzrVar = (com.google.android.gms.ads.internal.client.zzr) aue.a(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                zzbqgVar = iInterfaceQueryLocalInterface instanceof zzbra ? (zzbra) iInterfaceQueryLocalInterface : new zzbqy(strongBinder);
            }
            ?? r10 = zzbqgVar;
            aue.c(parcel);
            zzh(iObjectWrapperAsInterface, string, bundle, bundle2, zzrVar, r10);
            parcel2.writeNoException();
        } else if (i == 2) {
            zzbrm zzbrmVarZzf = zzf();
            parcel2.writeNoException();
            aue.e(parcel2, zzbrmVarZzf);
        } else if (i == 3) {
            zzbrm zzbrmVarZzg = zzg();
            parcel2.writeNoException();
            aue.e(parcel2, zzbrmVarZzg);
        } else if (i == 5) {
            zzea zzeaVarZze = zze();
            parcel2.writeNoException();
            aue.f(parcel2, zzeaVarZze);
        } else if (i == 10) {
            IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            aue.c(parcel);
            parcel2.writeNoException();
        } else if (i != 11) {
            switch (i) {
                case 13:
                    String string2 = parcel.readString();
                    String string3 = parcel.readString();
                    zzm zzmVar = (zzm) aue.a(parcel, zzm.CREATOR);
                    IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder strongBinder2 = parcel.readStrongBinder();
                    if (strongBinder2 != null) {
                        IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbqgVar = iInterfaceQueryLocalInterface2 instanceof zzbql ? (zzbql) iInterfaceQueryLocalInterface2 : new zzbqj(strongBinder2);
                    }
                    ?? r5 = zzbqgVar;
                    zzbpe zzbpeVarZzb = zzbpd.zzb(parcel.readStrongBinder());
                    com.google.android.gms.ads.internal.client.zzr zzrVar2 = (com.google.android.gms.ads.internal.client.zzr) aue.a(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                    aue.c(parcel);
                    zzj(string2, string3, zzmVar, iObjectWrapperAsInterface2, r5, zzbpeVarZzb, zzrVar2);
                    parcel2.writeNoException();
                    break;
                case 14:
                    String string4 = parcel.readString();
                    String string5 = parcel.readString();
                    zzm zzmVar2 = (zzm) aue.a(parcel, zzm.CREATOR);
                    IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder strongBinder3 = parcel.readStrongBinder();
                    if (strongBinder3 != null) {
                        IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        zzbqgVar = iInterfaceQueryLocalInterface3 instanceof zzbqo ? (zzbqo) iInterfaceQueryLocalInterface3 : new zzbqm(strongBinder3);
                    }
                    ?? r7 = zzbqgVar;
                    zzbpe zzbpeVarZzb2 = zzbpd.zzb(parcel.readStrongBinder());
                    aue.c(parcel);
                    zzl(string4, string5, zzmVar2, iObjectWrapperAsInterface3, r7, zzbpeVarZzb2);
                    parcel2.writeNoException();
                    break;
                case 15:
                    IObjectWrapper iObjectWrapperAsInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    aue.c(parcel);
                    boolean zZzs = zzs(iObjectWrapperAsInterface4);
                    parcel2.writeNoException();
                    parcel2.writeInt(zZzs ? 1 : 0);
                    break;
                case 16:
                    String string6 = parcel.readString();
                    String string7 = parcel.readString();
                    zzm zzmVar3 = (zzm) aue.a(parcel, zzm.CREATOR);
                    IObjectWrapper iObjectWrapperAsInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder strongBinder4 = parcel.readStrongBinder();
                    if (strongBinder4 != null) {
                        IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbqgVar = iInterfaceQueryLocalInterface4 instanceof zzbqu ? (zzbqu) iInterfaceQueryLocalInterface4 : new zzbqs(strongBinder4);
                    }
                    ?? r11 = zzbqgVar;
                    zzbpe zzbpeVarZzb3 = zzbpd.zzb(parcel.readStrongBinder());
                    aue.c(parcel);
                    zzp(string6, string7, zzmVar3, iObjectWrapperAsInterface5, r11, zzbpeVarZzb3);
                    parcel2.writeNoException();
                    break;
                case 17:
                    IObjectWrapper iObjectWrapperAsInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    aue.c(parcel);
                    boolean zZzt = zzt(iObjectWrapperAsInterface6);
                    parcel2.writeNoException();
                    parcel2.writeInt(zZzt ? 1 : 0);
                    break;
                case 18:
                    String string8 = parcel.readString();
                    String string9 = parcel.readString();
                    zzm zzmVar4 = (zzm) aue.a(parcel, zzm.CREATOR);
                    IObjectWrapper iObjectWrapperAsInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder strongBinder5 = parcel.readStrongBinder();
                    if (strongBinder5 != null) {
                        IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbqgVar = iInterfaceQueryLocalInterface5 instanceof zzbqr ? (zzbqr) iInterfaceQueryLocalInterface5 : new zzbqp(strongBinder5);
                    }
                    ?? r6 = zzbqgVar;
                    zzbpe zzbpeVarZzb4 = zzbpd.zzb(parcel.readStrongBinder());
                    aue.c(parcel);
                    zzm(string8, string9, zzmVar4, iObjectWrapperAsInterface7, r6, zzbpeVarZzb4);
                    parcel2.writeNoException();
                    break;
                case 19:
                    String string10 = parcel.readString();
                    aue.c(parcel);
                    zzq(string10);
                    parcel2.writeNoException();
                    break;
                case 20:
                    String string11 = parcel.readString();
                    String string12 = parcel.readString();
                    zzm zzmVar5 = (zzm) aue.a(parcel, zzm.CREATOR);
                    IObjectWrapper iObjectWrapperAsInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder strongBinder6 = parcel.readStrongBinder();
                    if (strongBinder6 != null) {
                        IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbqgVar = iInterfaceQueryLocalInterface6 instanceof zzbqu ? (zzbqu) iInterfaceQueryLocalInterface6 : new zzbqs(strongBinder6);
                    }
                    ?? r12 = zzbqgVar;
                    zzbpe zzbpeVarZzb5 = zzbpd.zzb(parcel.readStrongBinder());
                    aue.c(parcel);
                    zzo(string11, string12, zzmVar5, iObjectWrapperAsInterface8, r12, zzbpeVarZzb5);
                    parcel2.writeNoException();
                    break;
                case 21:
                    String string13 = parcel.readString();
                    String string14 = parcel.readString();
                    zzm zzmVar6 = (zzm) aue.a(parcel, zzm.CREATOR);
                    IObjectWrapper iObjectWrapperAsInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder strongBinder7 = parcel.readStrongBinder();
                    if (strongBinder7 != null) {
                        IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbqgVar = iInterfaceQueryLocalInterface7 instanceof zzbql ? (zzbql) iInterfaceQueryLocalInterface7 : new zzbqj(strongBinder7);
                    }
                    ?? r8 = zzbqgVar;
                    zzbpe zzbpeVarZzb6 = zzbpd.zzb(parcel.readStrongBinder());
                    com.google.android.gms.ads.internal.client.zzr zzrVar3 = (com.google.android.gms.ads.internal.client.zzr) aue.a(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                    aue.c(parcel);
                    zzk(string13, string14, zzmVar6, iObjectWrapperAsInterface9, r8, zzbpeVarZzb6, zzrVar3);
                    parcel2.writeNoException();
                    break;
                case 22:
                    String string15 = parcel.readString();
                    String string16 = parcel.readString();
                    zzm zzmVar7 = (zzm) aue.a(parcel, zzm.CREATOR);
                    IObjectWrapper iObjectWrapperAsInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder strongBinder8 = parcel.readStrongBinder();
                    if (strongBinder8 != null) {
                        IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbqgVar = iInterfaceQueryLocalInterface8 instanceof zzbqr ? (zzbqr) iInterfaceQueryLocalInterface8 : new zzbqp(strongBinder8);
                    }
                    ?? r9 = zzbqgVar;
                    zzbpe zzbpeVarZzb7 = zzbpd.zzb(parcel.readStrongBinder());
                    zzbfi zzbfiVar = (zzbfi) aue.a(parcel, zzbfi.CREATOR);
                    aue.c(parcel);
                    zzn(string15, string16, zzmVar7, iObjectWrapperAsInterface10, r9, zzbpeVarZzb7, zzbfiVar);
                    parcel2.writeNoException();
                    break;
                case 23:
                    String string17 = parcel.readString();
                    String string18 = parcel.readString();
                    zzm zzmVar8 = (zzm) aue.a(parcel, zzm.CREATOR);
                    IObjectWrapper iObjectWrapperAsInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder strongBinder9 = parcel.readStrongBinder();
                    if (strongBinder9 != null) {
                        IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback");
                        zzbqgVar = iInterfaceQueryLocalInterface9 instanceof zzbqi ? (zzbqi) iInterfaceQueryLocalInterface9 : new zzbqg(strongBinder9);
                    }
                    ?? r13 = zzbqgVar;
                    zzbpe zzbpeVarZzb8 = zzbpd.zzb(parcel.readStrongBinder());
                    aue.c(parcel);
                    zzi(string17, string18, zzmVar8, iObjectWrapperAsInterface11, r13, zzbpeVarZzb8);
                    parcel2.writeNoException();
                    break;
                case 24:
                    IObjectWrapper iObjectWrapperAsInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    aue.c(parcel);
                    boolean zZzr = zzr(iObjectWrapperAsInterface12);
                    parcel2.writeNoException();
                    parcel2.writeInt(zZzr ? 1 : 0);
                    break;
                default:
                    return false;
            }
        } else {
            parcel.createStringArray();
            aue.c(parcel);
            parcel2.writeNoException();
        }
        return true;
    }
}
