package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.fse;

public final class zzap extends zzau implements zzar {
    public zzap(IBinder iBinder) {
        super(iBinder, "com.android.vending.billing.IInAppBillingService");
    }

    @Override
    public final int zza(int i, String str, String str2) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(3);
        parcelZzu.writeString(str);
        parcelZzu.writeString(str2);
        Parcel parcelZzv = zzv(5, parcelZzu);
        int i2 = parcelZzv.readInt();
        parcelZzv.recycle();
        return i2;
    }

    @Override
    public final int zzb(int i, String str, String str2) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(i);
        parcelZzu.writeString(str);
        parcelZzu.writeString(str2);
        Parcel parcelZzv = zzv(1, parcelZzu);
        int i2 = parcelZzv.readInt();
        parcelZzv.recycle();
        return i2;
    }

    @Override
    public final int zzc(int i, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(i);
        parcelZzu.writeString(str);
        parcelZzu.writeString(str2);
        fse.b(parcelZzu, bundle);
        Parcel parcelZzv = zzv(10, parcelZzu);
        int i2 = parcelZzv.readInt();
        parcelZzv.recycle();
        return i2;
    }

    @Override
    public final Bundle zzd(int i, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(9);
        parcelZzu.writeString(str);
        parcelZzu.writeString(str2);
        fse.b(parcelZzu, bundle);
        Parcel parcelZzv = zzv(902, parcelZzu);
        Bundle bundle2 = (Bundle) fse.a(parcelZzv, Bundle.CREATOR);
        parcelZzv.recycle();
        return bundle2;
    }

    @Override
    public final Bundle zze(int i, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(9);
        parcelZzu.writeString(str);
        parcelZzu.writeString(str2);
        fse.b(parcelZzu, bundle);
        Parcel parcelZzv = zzv(12, parcelZzu);
        Bundle bundle2 = (Bundle) fse.a(parcelZzv, Bundle.CREATOR);
        parcelZzv.recycle();
        return bundle2;
    }

    @Override
    public final Bundle zzf(int i, String str, String str2, String str3, String str4) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(3);
        parcelZzu.writeString(str);
        parcelZzu.writeString(str2);
        parcelZzu.writeString(str3);
        parcelZzu.writeString(null);
        Parcel parcelZzv = zzv(3, parcelZzu);
        Bundle bundle = (Bundle) fse.a(parcelZzv, Bundle.CREATOR);
        parcelZzv.recycle();
        return bundle;
    }

    @Override
    public final Bundle zzg(int i, String str, String str2, String str3, String str4, Bundle bundle) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(i);
        parcelZzu.writeString(str);
        parcelZzu.writeString(str2);
        parcelZzu.writeString(str3);
        parcelZzu.writeString(null);
        fse.b(parcelZzu, bundle);
        Parcel parcelZzv = zzv(8, parcelZzu);
        Bundle bundle2 = (Bundle) fse.a(parcelZzv, Bundle.CREATOR);
        parcelZzv.recycle();
        return bundle2;
    }

    @Override
    public final Bundle zzh(int i, String str, String str2, String str3) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(3);
        parcelZzu.writeString(str);
        parcelZzu.writeString(str2);
        parcelZzu.writeString(str3);
        Parcel parcelZzv = zzv(4, parcelZzu);
        Bundle bundle = (Bundle) fse.a(parcelZzv, Bundle.CREATOR);
        parcelZzv.recycle();
        return bundle;
    }

    @Override
    public final Bundle zzi(int i, String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(i);
        parcelZzu.writeString(str);
        parcelZzu.writeString(str2);
        parcelZzu.writeString(str3);
        fse.b(parcelZzu, bundle);
        Parcel parcelZzv = zzv(11, parcelZzu);
        Bundle bundle2 = (Bundle) fse.a(parcelZzv, Bundle.CREATOR);
        parcelZzv.recycle();
        return bundle2;
    }

    @Override
    public final Bundle zzj(int i, String str, String str2, Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(i);
        parcelZzu.writeString(str);
        parcelZzu.writeString(str2);
        fse.b(parcelZzu, bundle);
        fse.b(parcelZzu, bundle2);
        Parcel parcelZzv = zzv(901, parcelZzu);
        Bundle bundle3 = (Bundle) fse.a(parcelZzv, Bundle.CREATOR);
        parcelZzv.recycle();
        return bundle3;
    }

    @Override
    public final void zzk(int i, String str, Bundle bundle, zzx zzxVar) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(21);
        parcelZzu.writeString(str);
        fse.b(parcelZzu, bundle);
        fse.c(parcelZzu, zzxVar);
        zzx(1501, parcelZzu);
    }

    @Override
    public final void zzl(int i, String str, Bundle bundle, zzz zzzVar) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(22);
        parcelZzu.writeString(str);
        fse.b(parcelZzu, bundle);
        fse.c(parcelZzu, zzzVar);
        zzx(1801, parcelZzu);
    }

    @Override
    public final void zzm(Bundle bundle, zzac zzacVar) throws RemoteException {
        Parcel parcelZzu = zzu();
        fse.b(parcelZzu, bundle);
        fse.c(parcelZzu, zzacVar);
        zzx(2001, parcelZzu);
    }

    @Override
    public final void zzn(int i, String str, Bundle bundle, zzae zzaeVar) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(i);
        parcelZzu.writeString(str);
        fse.b(parcelZzu, bundle);
        fse.c(parcelZzu, zzaeVar);
        zzx(1601, parcelZzu);
    }

    @Override
    public final void zzo(int i, String str, Bundle bundle, zzag zzagVar) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(18);
        parcelZzu.writeString(str);
        fse.b(parcelZzu, bundle);
        fse.c(parcelZzu, zzagVar);
        zzw(1301, parcelZzu);
    }

    @Override
    public final void zzp(int i, String str, Bundle bundle, zzai zzaiVar) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(i);
        parcelZzu.writeString(str);
        fse.b(parcelZzu, bundle);
        fse.c(parcelZzu, zzaiVar);
        zzx(1901, parcelZzu);
    }

    @Override
    public final void zzq(int i, String str, Bundle bundle, zzak zzakVar) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(25);
        parcelZzu.writeString(str);
        fse.b(parcelZzu, bundle);
        fse.c(parcelZzu, zzakVar);
        zzx(2101, parcelZzu);
    }

    @Override
    public final void zzr(int i, String str, Bundle bundle, zzam zzamVar) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(21);
        parcelZzu.writeString(str);
        fse.b(parcelZzu, bundle);
        fse.c(parcelZzu, zzamVar);
        zzx(1401, parcelZzu);
    }

    @Override
    public final void zzs(int i, String str, Bundle bundle, zzao zzaoVar) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(24);
        parcelZzu.writeString(str);
        fse.b(parcelZzu, bundle);
        fse.c(parcelZzu, zzaoVar);
        zzx(1701, parcelZzu);
    }

    @Override
    public final void zzt(int i, String str, Bundle bundle, zzat zzatVar) throws RemoteException {
        Parcel parcelZzu = zzu();
        parcelZzu.writeInt(12);
        parcelZzu.writeString(str);
        fse.b(parcelZzu, bundle);
        fse.c(parcelZzu, zzatVar);
        zzw(1201, parcelZzu);
    }
}
