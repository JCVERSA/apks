package com.facebook.ads.redexgen.core;

import java.lang.ref.WeakReference;

public class C1255Tc implements InterfaceC1288Uk {
    public WeakReference<C1178Qc> A00;

    public C1255Tc(C1178Qc c1178Qc) {
        this.A00 = new WeakReference<>(c1178Qc);
    }

    @Override
    public final void AEW(boolean z) {
        if (this.A00.get() != null) {
            this.A00.get().A1f(z, false);
        }
    }
}
