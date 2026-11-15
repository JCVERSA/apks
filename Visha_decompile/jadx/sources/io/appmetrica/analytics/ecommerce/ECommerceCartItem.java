package io.appmetrica.analytics.ecommerce;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.impl.In;
import java.math.BigDecimal;

public class ECommerceCartItem {
    private final ECommerceProduct a;
    private final BigDecimal b;
    private final ECommercePrice c;
    private ECommerceReferrer d;

    public ECommerceCartItem(@NonNull ECommerceProduct eCommerceProduct, @NonNull ECommercePrice eCommercePrice, long j) {
        this(eCommerceProduct, eCommercePrice, In.a(j));
    }

    @NonNull
    public ECommerceProduct getProduct() {
        return this.a;
    }

    @NonNull
    public BigDecimal getQuantity() {
        return this.b;
    }

    @Nullable
    public ECommerceReferrer getReferrer() {
        return this.d;
    }

    @NonNull
    public ECommercePrice getRevenue() {
        return this.c;
    }

    @NonNull
    public ECommerceCartItem setReferrer(@Nullable ECommerceReferrer eCommerceReferrer) {
        this.d = eCommerceReferrer;
        return this;
    }

    public String toString() {
        return "ECommerceCartItem{product=" + this.a + ", quantity=" + this.b + ", revenue=" + this.c + ", referrer=" + this.d + '}';
    }

    public ECommerceCartItem(@NonNull ECommerceProduct eCommerceProduct, @NonNull ECommercePrice eCommercePrice, double d) {
        this(eCommerceProduct, eCommercePrice, new BigDecimal(In.a(d)));
    }

    public ECommerceCartItem(@NonNull ECommerceProduct eCommerceProduct, @NonNull ECommercePrice eCommercePrice, @NonNull BigDecimal bigDecimal) {
        this.a = eCommerceProduct;
        this.b = bigDecimal;
        this.c = eCommercePrice;
    }
}
