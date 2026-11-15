package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import defpackage.rff;

public abstract class zzbf extends zzb implements zzbg {
    public zzbf() {
        super("com.google.android.gms.auth.api.internal.IAuthCallbacks");
    }

    @Override
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            ProxyResponse proxyResponse = (ProxyResponse) rff.a(parcel, ProxyResponse.CREATOR);
            rff.b(parcel);
            zzb(proxyResponse);
        } else {
            if (i != 2) {
                return false;
            }
            String string = parcel.readString();
            rff.b(parcel);
            zzc(string);
        }
        parcel2.writeNoException();
        return true;
    }
}
