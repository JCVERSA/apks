package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;

public final class R0 implements Runnable {
    public final ECommerceEvent a;
    public final C2702m1 b;

    public R0(C2702m1 c2702m1, ECommerceEvent eCommerceEvent) {
        this.b = c2702m1;
        this.a = eCommerceEvent;
    }

    @Override
    public final void run() {
        C2702m1.a(this.b).reportECommerce(this.a);
    }
}
