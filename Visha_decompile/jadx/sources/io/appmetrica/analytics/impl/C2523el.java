package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;

public final class C2523el implements ProtobufConverter {
    @Override
    @NonNull
    public final C2657k6 fromModel(@NonNull C2548fl c2548fl) {
        C2657k6 c2657k6 = new C2657k6();
        c2657k6.a = (String) WrapUtils.getOrDefault(c2548fl.a, c2657k6.a);
        c2657k6.b = (String) WrapUtils.getOrDefault(c2548fl.b, c2657k6.b);
        c2657k6.c = ((Integer) WrapUtils.getOrDefault(c2548fl.c, Integer.valueOf(c2657k6.c))).intValue();
        c2657k6.f = ((Integer) WrapUtils.getOrDefault(c2548fl.d, Integer.valueOf(c2657k6.f))).intValue();
        c2657k6.d = (String) WrapUtils.getOrDefault(c2548fl.e, c2657k6.d);
        c2657k6.e = ((Boolean) WrapUtils.getOrDefault(c2548fl.f, Boolean.valueOf(c2657k6.e))).booleanValue();
        return c2657k6;
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    public final C2548fl a(@NonNull C2657k6 c2657k6) {
        throw new UnsupportedOperationException();
    }
}
