package com.google.android.gms.internal.p002authapi;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

public abstract class zbr extends zbb implements zbs {
    public zbr() {
        super("com.google.android.gms.auth.api.credentials.internal.ICredentialsCallbacks");
    }

    @Override
    protected final boolean zba(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            Status status = (Status) zbc.zba(parcel, Status.CREATOR);
            Credential credential = (Credential) zbc.zba(parcel, Credential.CREATOR);
            zbc.zbb(parcel);
            zbb(status, credential);
        } else if (i10 == 2) {
            Status status2 = (Status) zbc.zba(parcel, Status.CREATOR);
            zbc.zbb(parcel);
            zbc(status2);
        } else {
            if (i10 != 3) {
                return false;
            }
            Status status3 = (Status) zbc.zba(parcel, Status.CREATOR);
            String string = parcel.readString();
            zbc.zbb(parcel);
            zbd(status3, string);
        }
        parcel2.writeNoException();
        return true;
    }
}
