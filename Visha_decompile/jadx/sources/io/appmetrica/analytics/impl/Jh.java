package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;

public final class Jh implements Runnable {
    public final ECommerceEvent a;
    public final Yh b;

    public Jh(Yh yh, ECommerceEvent eCommerceEvent) {
        this.b = yh;
        this.a = eCommerceEvent;
    }

    @Override
    public final void run() {
        Yh yh = this.b;
        Yh.a(yh.a, yh.d, yh.e).reportECommerce(this.a);
    }
}
