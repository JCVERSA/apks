package io.appmetrica.analytics.ecommerce;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

public class ECommercePrice {
    private final ECommerceAmount a;
    private List b;

    public ECommercePrice(@NonNull ECommerceAmount eCommerceAmount) {
        this.a = eCommerceAmount;
    }

    @NonNull
    public ECommerceAmount getFiat() {
        return this.a;
    }

    @Nullable
    public List<ECommerceAmount> getInternalComponents() {
        return this.b;
    }

    public ECommercePrice setInternalComponents(@Nullable List<ECommerceAmount> list) {
        this.b = list;
        return this;
    }

    public String toString() {
        return "ECommercePrice{fiat=" + this.a + ", internalComponents=" + this.b + '}';
    }
}
