package com.google.android.gms.internal.p000authapi;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;
import defpackage.j3e;

public abstract class zbr extends zbb implements zbs {
    public zbr() {
        super("com.google.android.gms.auth.api.credentials.internal.ICredentialsCallbacks");
    }

    @Override
    public final boolean zba(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            Status status = (Status) j3e.a(parcel, Status.CREATOR);
            Credential credential = (Credential) j3e.a(parcel, Credential.CREATOR);
            j3e.b(parcel);
            zbb(status, credential);
        } else if (i == 2) {
            Status status2 = (Status) j3e.a(parcel, Status.CREATOR);
            j3e.b(parcel);
            zbc(status2);
        } else {
            if (i != 3) {
                return false;
            }
            Status status3 = (Status) j3e.a(parcel, Status.CREATOR);
            String string = parcel.readString();
            j3e.b(parcel);
            zbd(status3, string);
        }
        parcel2.writeNoException();
        return true;
    }
}
