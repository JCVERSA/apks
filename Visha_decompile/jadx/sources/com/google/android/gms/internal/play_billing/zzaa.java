package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;

public final class zzaa extends zzau implements zzac {
    public zzaa(IBinder iBinder) {
        super(iBinder, "com.android.vending.billing.IInAppBillingDelegateToBackendCallback");
    }

    @Override
    public final void onDelegateToBackendResponse(Bundle bundle) throws RemoteException {
        throw null;
    }
}
