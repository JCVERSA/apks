package com.google.android.gms.internal.p000authapi;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import com.google.android.gms.common.api.Status;
import defpackage.j3e;

public abstract class zbag extends zbb implements zbah {
    public zbag() {
        super("com.google.android.gms.auth.api.identity.internal.ISavePasswordCallback");
    }

    @Override
    public final boolean zba(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        Status status = (Status) j3e.a(parcel, Status.CREATOR);
        SavePasswordResult savePasswordResult = (SavePasswordResult) j3e.a(parcel, SavePasswordResult.CREATOR);
        j3e.b(parcel);
        zbb(status, savePasswordResult);
        return true;
    }
}
