package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zze extends zzq implements zzf {
    public zze() {
        super("com.android.vending.billing.IInAppBillingGetAlternativeBillingOnlyDialogIntentCallback");
    }

    @Override
    protected final boolean zzb(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        Bundle bundle = (Bundle) zzr.zza(parcel, Bundle.CREATOR);
        zzr.zzb(parcel);
        zza(bundle);
        return true;
    }
}
