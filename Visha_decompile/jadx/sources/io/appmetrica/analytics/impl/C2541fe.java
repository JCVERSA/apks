package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.ecommerce.ECommerceOrder;
import java.util.List;

public final class C2541fe extends ECommerceEvent {
    public static final int d = 6;
    public static final int e = 7;
    public final int a;

    @NonNull
    public final C2591he b;
    public final InterfaceC2585h8 c;

    public C2541fe(int i, @NonNull ECommerceOrder eCommerceOrder) {
        this(i, new C2591he(eCommerceOrder), new C2566ge());
    }

    @NonNull
    @VisibleForTesting
    public final InterfaceC2585h8 a() {
        return this.c;
    }

    @Override
    @NonNull
    public final String getPublicDescription() {
        return "order info";
    }

    @Override
    public final List<C2893ti> toProto() {
        return (List) this.c.fromModel(this);
    }

    public final String toString() {
        return "OrderInfoEvent{eventType=" + this.a + ", order=" + this.b + ", converter=" + this.c + '}';
    }

    @VisibleForTesting
    public C2541fe(int i, @NonNull C2591he c2591he, @NonNull InterfaceC2585h8 interfaceC2585h8) {
        this.a = i;
        this.b = c2591he;
        this.c = interfaceC2585h8;
    }
}
