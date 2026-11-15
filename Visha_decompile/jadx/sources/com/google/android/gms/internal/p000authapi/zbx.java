package com.google.android.gms.internal.p000authapi;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.common.api.Status;
import defpackage.j3e;

public abstract class zbx extends zbb implements zby {
    public zbx() {
        super("com.google.android.gms.auth.api.identity.internal.IBeginSignInCallback");
    }

    @Override
    public final boolean zba(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        Status status = (Status) j3e.a(parcel, Status.CREATOR);
        BeginSignInResult beginSignInResult = (BeginSignInResult) j3e.a(parcel, BeginSignInResult.CREATOR);
        j3e.b(parcel);
        zbb(status, beginSignInResult);
        return true;
    }
}
