package com.google.android.gms.internal.play_billing;

import android.os.IBinder;
import android.os.IInterface;

public abstract class zzl extends zzq implements zzm {
    public static zzm zzr(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
        return iInterfaceQueryLocalInterface instanceof zzm ? (zzm) iInterfaceQueryLocalInterface : new zzk(iBinder);
    }
}
