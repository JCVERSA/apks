package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class U implements Converter {
    public final D7 a;
    public final C3035za b;

    public U() {
        this(new D7(), new C3035za(20));
    }

    @Override
    @NonNull
    public final C2893ti fromModel(@NonNull V v) {
        C2610i8 c2610i8 = new C2610i8();
        c2610i8.b = this.a.fromModel(v.a);
        C2649jn c2649jnA = this.b.a(v.b);
        c2610i8.a = StringUtils.getUTF8Bytes((String) c2649jnA.a);
        return new C2893ti(c2610i8, new C2903u3(C2903u3.b(c2649jnA)));
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public U(D7 d7, C3035za c3035za) {
        this.a = d7;
        this.b = c3035za;
    }

    @NonNull
    public final V a(@NonNull C2893ti c2893ti) {
        throw new UnsupportedOperationException();
    }
}
