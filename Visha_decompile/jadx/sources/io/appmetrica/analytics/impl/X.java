package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

public final class X implements ProtobufConverter {
    public final T a;
    public final C2831r6 b;

    public X() {
        this(new T(new Um()), new C2831r6());
    }

    @Override
    @NonNull
    public final C2483d6 fromModel(@NonNull W w) {
        C2483d6 c2483d6 = new C2483d6();
        c2483d6.a = this.a.fromModel(w.a);
        String str = w.b;
        if (str != null) {
            c2483d6.b = str;
        }
        c2483d6.c = this.b.a(w.c);
        return c2483d6;
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public X(T t, C2831r6 c2831r6) {
        this.a = t;
        this.b = c2831r6;
    }

    @NonNull
    public final W a(@NonNull C2483d6 c2483d6) {
        throw new UnsupportedOperationException();
    }
}
