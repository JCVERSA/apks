package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Savable;

public final class F implements Savable {
    public final G a;

    public F(G g) {
        this.a = g;
    }

    @Override
    public final Boolean getValue() {
        return Boolean.valueOf(this.a.a.a(false));
    }

    @Override
    public final void setValue(Object obj) {
        a(((Boolean) obj).booleanValue());
    }

    public final void a(boolean z) {
        this.a.a.e(z);
    }
}
