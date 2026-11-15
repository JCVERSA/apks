package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.ecommerce.ECommerceCartItem;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import java.util.List;

public final class B3 extends ECommerceEvent {
    public static final int d = 4;
    public static final int e = 5;
    public final int a;

    @NonNull
    public final E3 b;
    public final InterfaceC2585h8 c;

    public B3(int i, @NonNull ECommerceCartItem eCommerceCartItem) {
        this(i, new E3(eCommerceCartItem), new C3());
    }

    @NonNull
    @VisibleForTesting
    public final InterfaceC2585h8 a() {
        return this.c;
    }

    @Override
    @NonNull
    public final String getPublicDescription() {
        int i = this.a;
        if (i != 4) {
            return i != 5 ? "unknown cart action info" : "remove cart item info";
        }
        return "add cart item info";
    }

    @Override
    public final List<C2893ti> toProto() {
        return (List) this.c.fromModel(this);
    }

    @NonNull
    public final String toString() {
        return "CartActionInfoEvent{eventType=" + this.a + ", cartItem=" + this.b + ", converter=" + this.c + '}';
    }

    @VisibleForTesting
    public B3(int i, @NonNull E3 e3, @NonNull InterfaceC2585h8 interfaceC2585h8) {
        this.a = i;
        this.b = e3;
        this.c = interfaceC2585h8;
    }
}
