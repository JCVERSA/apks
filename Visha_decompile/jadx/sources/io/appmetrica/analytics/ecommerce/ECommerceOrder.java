package io.appmetrica.analytics.ecommerce;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import java.util.Map;

public class ECommerceOrder {
    private final String a;
    private final List b;
    private Map c;

    public ECommerceOrder(@NonNull String str, @NonNull List<ECommerceCartItem> list) {
        this.a = str;
        this.b = list;
    }

    @NonNull
    public List<ECommerceCartItem> getCartItems() {
        return this.b;
    }

    @NonNull
    public String getIdentifier() {
        return this.a;
    }

    @Nullable
    public Map<String, String> getPayload() {
        return this.c;
    }

    public ECommerceOrder setPayload(@Nullable Map<String, String> map) {
        this.c = map;
        return this;
    }

    public String toString() {
        return "ECommerceOrder{identifier='" + this.a + "', cartItems=" + this.b + ", payload=" + this.c + '}';
    }
}
