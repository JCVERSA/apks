package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.rff;

public final class zzc extends com.google.android.gms.internal.auth.zza implements zze {
    public zzc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.account.IWorkAccountService");
    }

    @Override
    public final void zzd(zzb zzbVar, String str) throws RemoteException {
        Parcel parcelZza = zza();
        rff.e(parcelZza, zzbVar);
        parcelZza.writeString(str);
        zzc(2, parcelZza);
    }

    @Override
    public final void zze(zzb zzbVar, Account account) throws RemoteException {
        Parcel parcelZza = zza();
        rff.e(parcelZza, zzbVar);
        rff.d(parcelZza, account);
        zzc(3, parcelZza);
    }

    @Override
    public final void zzf(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        rff.c(parcelZza, z);
        zzc(1, parcelZza);
    }
}
