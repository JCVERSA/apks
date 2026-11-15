package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import defpackage.j3e;

public abstract class zbq extends com.google.android.gms.internal.p000authapi.zbb implements zbr {
    public zbq() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override
    public final boolean zba(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 101:
                GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) j3e.a(parcel, GoogleSignInAccount.CREATOR);
                Status status = (Status) j3e.a(parcel, Status.CREATOR);
                j3e.b(parcel);
                zbd(googleSignInAccount, status);
                break;
            case 102:
                Status status2 = (Status) j3e.a(parcel, Status.CREATOR);
                j3e.b(parcel);
                zbc(status2);
                break;
            case 103:
                Status status3 = (Status) j3e.a(parcel, Status.CREATOR);
                j3e.b(parcel);
                zbb(status3);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
