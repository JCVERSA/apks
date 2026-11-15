package io.appmetrica.analytics.impl;

import defpackage.qv0;
import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.plugins.PluginErrorDetails;

public final class C2964we implements Converter {
    @Override
    public final byte[] fromModel(String str) {
        if (y45.e(PluginErrorDetails.Platform.NATIVE, str)) {
            str = "JVM";
        }
        return str.getBytes(qv0.b);
    }

    @Override
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String a(byte[] bArr) {
        throw new UnsupportedOperationException();
    }
}
