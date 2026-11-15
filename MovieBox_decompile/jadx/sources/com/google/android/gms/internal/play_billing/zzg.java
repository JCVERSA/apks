package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzg extends zzq implements zzh {
    public zzg() {
        super("com.android.vending.billing.IInAppBillingGetBillingConfigCallback");
    }

    @Override
    protected final boolean zzb(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        Bundle bundle = (Bundle) zzr.zza(parcel, Bundle.CREATOR);
        zzr.zzb(parcel);
        zza(bundle);
        parcel2.writeNoException();
        return true;
    }
}
