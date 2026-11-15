package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.rff;

public abstract class zza extends com.google.android.gms.internal.auth.zzb implements zzb {
    public zza() {
        super("com.google.android.gms.auth.account.IWorkAccountCallback");
    }

    @Override
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            Account account = (Account) rff.a(parcel, Account.CREATOR);
            rff.b(parcel);
            zzb(account);
        } else {
            if (i != 2) {
                return false;
            }
            boolean zF = rff.f(parcel);
            rff.b(parcel);
            zzc(zF);
        }
        return true;
    }
}
