package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

public final class F3 implements Converter {
    public final C3010ya a;

    public F3() {
        this(new C3010ya(20, 100));
    }

    @Override
    @NonNull
    public final C2893ti fromModel(@NonNull List<String> list) {
        C2649jn c2649jnA = this.a.a((List<Object>) list);
        C2684l8 c2684l8 = new C2684l8();
        c2684l8.a = StringUtils.getUTF8Bytes((List<String>) c2649jnA.a);
        InterfaceC2928v3 interfaceC2928v3 = c2649jnA.b;
        int i = ((E4) interfaceC2928v3).a;
        return new C2893ti(c2684l8, interfaceC2928v3);
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @VisibleForTesting
    public F3(@NonNull C3010ya c3010ya) {
        this.a = c3010ya;
    }

    @NonNull
    public final List<String> a(@NonNull C2893ti c2893ti) {
        throw new UnsupportedOperationException();
    }
}
