package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;

public final class C2745nj implements Xa {
    public final ECommerceEvent a;

    public C2745nj(ECommerceEvent eCommerceEvent) {
        this.a = eCommerceEvent;
    }

    @Override
    public final void a(Ya ya) {
        ya.reportECommerce(this.a);
    }
}
