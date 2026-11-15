package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zza;
import defpackage.uff;

public final class zzt extends zza implements IAccountAccessor {
    public zzt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    @Override
    public final Account zzb() throws RemoteException {
        Parcel parcelZzB = zzB(2, zza());
        Account account = (Account) uff.b(parcelZzB, Account.CREATOR);
        parcelZzB.recycle();
        return account;
    }
}
