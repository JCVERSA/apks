package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsResponse;
import defpackage.rff;

public final class zzd extends zza implements zzf {
    public zzd(IBinder iBinder) {
        super(iBinder, "com.google.android.auth.IAuthManagerService");
    }

    @Override
    public final Bundle zzd(String str, Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        rff.d(parcelZza, bundle);
        Parcel parcelZzb = zzb(2, parcelZza);
        Bundle bundle2 = (Bundle) rff.a(parcelZzb, Bundle.CREATOR);
        parcelZzb.recycle();
        return bundle2;
    }

    @Override
    public final Bundle zze(Account account, String str, Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        rff.d(parcelZza, account);
        parcelZza.writeString(str);
        rff.d(parcelZza, bundle);
        Parcel parcelZzb = zzb(5, parcelZza);
        Bundle bundle2 = (Bundle) rff.a(parcelZzb, Bundle.CREATOR);
        parcelZzb.recycle();
        return bundle2;
    }

    @Override
    public final Bundle zzf(Account account) throws RemoteException {
        Parcel parcelZza = zza();
        rff.d(parcelZza, account);
        Parcel parcelZzb = zzb(7, parcelZza);
        Bundle bundle = (Bundle) rff.a(parcelZzb, Bundle.CREATOR);
        parcelZzb.recycle();
        return bundle;
    }

    @Override
    public final Bundle zzg(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzb = zzb(8, parcelZza);
        Bundle bundle = (Bundle) rff.a(parcelZzb, Bundle.CREATOR);
        parcelZzb.recycle();
        return bundle;
    }

    @Override
    public final AccountChangeEventsResponse zzh(AccountChangeEventsRequest accountChangeEventsRequest) throws RemoteException {
        Parcel parcelZza = zza();
        rff.d(parcelZza, accountChangeEventsRequest);
        Parcel parcelZzb = zzb(3, parcelZza);
        AccountChangeEventsResponse accountChangeEventsResponse = (AccountChangeEventsResponse) rff.a(parcelZzb, AccountChangeEventsResponse.CREATOR);
        parcelZzb.recycle();
        return accountChangeEventsResponse;
    }
}
