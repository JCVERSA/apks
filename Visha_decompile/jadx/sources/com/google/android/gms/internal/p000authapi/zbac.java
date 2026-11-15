package com.google.android.gms.internal.p000authapi;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import defpackage.j3e;

public abstract class zbac extends zbb implements zbad {
    public zbac() {
        super("com.google.android.gms.auth.api.identity.internal.IGetSignInIntentCallback");
    }

    @Override
    public final boolean zba(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        Status status = (Status) j3e.a(parcel, Status.CREATOR);
        PendingIntent pendingIntent = (PendingIntent) j3e.a(parcel, PendingIntent.CREATOR);
        j3e.b(parcel);
        zbb(status, pendingIntent);
        return true;
    }
}
