package io.appmetrica.analytics.impl;

import defpackage.qv0;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import java.nio.charset.Charset;
import java.util.Map;

public final class C2989xe implements Converter {
    @Override
    public final C2508e6[] fromModel(Map<String, String> map) {
        int size = map.size();
        C2508e6[] c2508e6Arr = new C2508e6[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            c2508e6Arr[i2] = new C2508e6();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            C2508e6 c2508e6 = c2508e6Arr[i];
            String key = entry.getKey();
            Charset charset = qv0.b;
            c2508e6.a = key.getBytes(charset);
            c2508e6Arr[i].b = entry.getValue().getBytes(charset);
            i++;
        }
        return c2508e6Arr;
    }

    @Override
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final Map<String, String> a(C2508e6[] c2508e6Arr) {
        throw new UnsupportedOperationException();
    }
}
