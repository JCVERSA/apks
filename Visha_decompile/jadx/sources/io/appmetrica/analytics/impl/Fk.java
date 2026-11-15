package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.ecommerce.ECommerceProduct;
import io.appmetrica.analytics.ecommerce.ECommerceReferrer;
import java.util.List;

public final class Fk extends ECommerceEvent {

    @NonNull
    public final C2915uf a;

    @Nullable
    public final C2717mg b;
    public final InterfaceC2585h8 c;

    public Fk(@NonNull ECommerceProduct eCommerceProduct, @Nullable ECommerceReferrer eCommerceReferrer) {
        this(new C2915uf(eCommerceProduct), eCommerceReferrer == null ? null : new C2717mg(eCommerceReferrer), new Gk());
    }

    @NonNull
    @VisibleForTesting
    public final InterfaceC2585h8 a() {
        return this.c;
    }

    @Override
    @NonNull
    public final String getPublicDescription() {
        return "shown product details info";
    }

    @Override
    public final List<C2893ti> toProto() {
        return (List) this.c.fromModel(this);
    }

    public final String toString() {
        return "ShownProductDetailInfoEvent{product=" + this.a + ", referrer=" + this.b + ", converter=" + this.c + '}';
    }

    @VisibleForTesting
    public Fk(@NonNull C2915uf c2915uf, @Nullable C2717mg c2717mg, @NonNull InterfaceC2585h8 interfaceC2585h8) {
        this.a = c2915uf;
        this.b = c2717mg;
        this.c = interfaceC2585h8;
    }
}
