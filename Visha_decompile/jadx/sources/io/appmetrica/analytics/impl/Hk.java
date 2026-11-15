package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.ecommerce.ECommerceScreen;
import java.util.List;

public final class Hk extends ECommerceEvent {

    @NonNull
    public final Si a;
    public final InterfaceC2585h8 b;

    public Hk(@NonNull ECommerceScreen eCommerceScreen) {
        this(new Si(eCommerceScreen), new Ik());
    }

    @NonNull
    @VisibleForTesting
    public final InterfaceC2585h8 a() {
        return this.b;
    }

    @Override
    @NonNull
    public final String getPublicDescription() {
        return "shown screen info";
    }

    @Override
    public final List<C2893ti> toProto() {
        return (List) this.b.fromModel(this);
    }

    public final String toString() {
        return "ShownScreenInfoEvent{screen=" + this.a + ", converter=" + this.b + '}';
    }

    @VisibleForTesting
    public Hk(@NonNull Si si, @NonNull InterfaceC2585h8 interfaceC2585h8) {
        this.a = si;
        this.b = interfaceC2585h8;
    }
}
