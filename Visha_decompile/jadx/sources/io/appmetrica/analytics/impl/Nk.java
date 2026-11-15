package io.appmetrica.analytics.impl;

import android.telephony.TelephonyManager;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;

public final class Nk implements FunctionWithThrowable {
    @Override
    public final Object apply(Object obj) {
        return ((TelephonyManager) obj).getSimOperatorName();
    }
}
