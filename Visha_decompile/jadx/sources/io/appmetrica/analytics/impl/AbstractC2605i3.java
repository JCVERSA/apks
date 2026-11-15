package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.BillingType;

public abstract class AbstractC2605i3 {
    public static final int[] a;

    static {
        int[] iArr = new int[BillingType.values().length];
        iArr[BillingType.LIBRARY_V6.ordinal()] = 1;
        a = iArr;
    }
}
