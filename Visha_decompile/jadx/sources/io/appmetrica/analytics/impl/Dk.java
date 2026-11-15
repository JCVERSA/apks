package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.ecommerce.ECommerceProduct;
import io.appmetrica.analytics.ecommerce.ECommerceScreen;
import java.util.List;

public final class Dk extends ECommerceEvent {

    @NonNull
    public final C2915uf a;

    @NonNull
    public final Si b;
    public final InterfaceC2585h8 c;

    public Dk(@NonNull ECommerceProduct eCommerceProduct, @NonNull ECommerceScreen eCommerceScreen) {
        this(new C2915uf(eCommerceProduct), new Si(eCommerceScreen), new Ek());
    }

    @NonNull
    @VisibleForTesting
    public final InterfaceC2585h8 a() {
        return this.c;
    }

    @Override
    @NonNull
    public final String getPublicDescription() {
        return "shown product card info";
    }

    @Override
    public final List<C2893ti> toProto() {
        return (List) this.c.fromModel(this);
    }

    public final String toString() {
        return "ShownProductCardInfoEvent{product=" + this.a + ", screen=" + this.b + ", converter=" + this.c + '}';
    }

    @VisibleForTesting
    public Dk(@NonNull C2915uf c2915uf, @NonNull Si si, @NonNull InterfaceC2585h8 interfaceC2585h8) {
        this.a = c2915uf;
        this.b = si;
        this.c = interfaceC2585h8;
    }
}
