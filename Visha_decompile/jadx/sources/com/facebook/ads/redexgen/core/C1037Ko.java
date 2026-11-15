package com.facebook.ads.redexgen.core;

import java.lang.ref.WeakReference;

public class C1037Ko extends AbstractRunnableC1322Vt {
    public final WeakReference<C1708eX> A00;

    public C1037Ko(C1708eX c1708eX) {
        this.A00 = new WeakReference<>(c1708eX);
    }

    public C1037Ko(WeakReference<C1708eX> weakReference) {
        this.A00 = weakReference;
    }

    @Override
    public final void A07() {
        C1708eX viewabilityChecker = this.A00.get();
        if (viewabilityChecker != null) {
            viewabilityChecker.A0U();
        }
    }
}
