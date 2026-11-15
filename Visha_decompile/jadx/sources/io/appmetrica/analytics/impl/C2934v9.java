package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

public final class C2934v9 implements ProtobufConverter {
    @Override
    @NonNull
    public final C2884t9 fromModel(@NonNull C2909u9 c2909u9) {
        C2884t9 c2884t9 = new C2884t9();
        String str = c2909u9.a;
        if (str != null) {
            c2884t9.a = str.getBytes();
        }
        return c2884t9;
    }

    @Override
    @NonNull
    public final C2909u9 toModel(@NonNull C2884t9 c2884t9) {
        return new C2909u9(new String(c2884t9.a));
    }
}
