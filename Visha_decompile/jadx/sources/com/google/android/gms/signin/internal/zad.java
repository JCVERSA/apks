package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.base.zab;
import defpackage.k0e;

public abstract class zad extends zab implements zae {
    public zad() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override
    public final boolean zaa(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 3:
                k0e.b(parcel);
                break;
            case 4:
                k0e.b(parcel);
                break;
            case 5:
            default:
                return false;
            case 6:
                k0e.b(parcel);
                break;
            case 7:
                k0e.b(parcel);
                break;
            case 8:
                zak zakVar = (zak) k0e.a(parcel, zak.CREATOR);
                k0e.b(parcel);
                zab(zakVar);
                break;
            case 9:
                k0e.b(parcel);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
