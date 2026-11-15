package com.android.billingclient.api;

public final class v0 {

    private boolean f18579a;

    v0(u0 u0Var) {
    }

    public final v0 a() {
        this.f18579a = true;
        return this;
    }

    public final x0 b() {
        if (this.f18579a) {
            return new x0(true, false, null);
        }
        throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
    }
}
