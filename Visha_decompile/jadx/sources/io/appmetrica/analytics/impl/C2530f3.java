package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.ProductInfo;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class C2530f3 extends SafeRunnable {
    public final ProductInfo a;
    public final C2555g3 b;

    public C2530f3(C2555g3 c2555g3, ProductInfo productInfo) {
        this.b = c2555g3;
        this.a = productInfo;
    }

    @Override
    public final void runSafety() {
        ((C2706m5) this.b.a).a(C2408a6.a(new C2890tf(this.a)));
    }
}
