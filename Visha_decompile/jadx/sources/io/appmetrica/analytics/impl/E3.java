package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceCartItem;
import java.math.BigDecimal;

public final class E3 {
    public final C2915uf a;
    public final BigDecimal b;
    public final C2741nf c;
    public final C2717mg d;

    public E3(ECommerceCartItem eCommerceCartItem) {
        this(new C2915uf(eCommerceCartItem.getProduct()), eCommerceCartItem.getQuantity(), new C2741nf(eCommerceCartItem.getRevenue()), eCommerceCartItem.getReferrer() == null ? null : new C2717mg(eCommerceCartItem.getReferrer()));
    }

    public final String toString() {
        return "CartItemWrapper{product=" + this.a + ", quantity=" + this.b + ", revenue=" + this.c + ", referrer=" + this.d + '}';
    }

    public E3(C2915uf c2915uf, BigDecimal bigDecimal, C2741nf c2741nf, C2717mg c2717mg) {
        this.a = c2915uf;
        this.b = bigDecimal;
        this.c = c2741nf;
        this.d = c2717mg;
    }
}
