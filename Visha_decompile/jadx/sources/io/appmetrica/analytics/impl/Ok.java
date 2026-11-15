package io.appmetrica.analytics.impl;

import android.telephony.TelephonyManager;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;

public final class Ok implements FunctionWithThrowable {
    public final Pk a;

    public Ok(Pk pk) {
        this.a = pk;
    }

    @Override
    public final Object apply(Object obj) {
        TelephonyManager telephonyManager = (TelephonyManager) obj;
        Pk pk = this.a;
        if (pk.b.hasPermission(pk.a, "android.permission.READ_PHONE_STATE")) {
            return Boolean.valueOf(telephonyManager.isNetworkRoaming());
        }
        return null;
    }
}
