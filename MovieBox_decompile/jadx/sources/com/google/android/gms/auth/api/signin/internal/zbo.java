package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zbo extends com.google.android.gms.internal.p002authapi.zbb implements zbp {
    public zbo() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override
    protected final boolean zba(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            zbc();
        } else {
            if (i10 != 2) {
                return false;
            }
            zbb();
        }
        return true;
    }
}
