package io.appmetrica.analytics.impl;

public final class U3 extends W7 {
    @Override
    public final boolean a(L3 l3, L3 l4) {
        if (!In.a(l4.a)) {
            if (In.a(l3.a)) {
                return false;
            }
            X7 x7 = l3.b;
            if (x7 == X7.c) {
                if (((Number) this.a.a(x7)).intValue() < ((Number) this.a.a(l4.b)).intValue()) {
                    return false;
                }
            } else if (((Number) this.a.a(x7)).intValue() <= ((Number) this.a.a(l4.b)).intValue()) {
                return false;
            }
        }
        return true;
    }
}
