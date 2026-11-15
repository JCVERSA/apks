package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.media3.datasource.cache.CacheDataSink;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Map;

public final class C2640je implements Converter {
    public final Ca a;

    public C2640je() {
        this(new Ca(CacheDataSink.DEFAULT_BUFFER_SIZE, 100, 1000));
    }

    @Override
    @NonNull
    public final C2893ti fromModel(@NonNull Map<String, String> map) {
        C2649jn c2649jnA = this.a.a(map);
        C2833r8 c2833r8 = new C2833r8();
        c2833r8.b = ((E4) c2649jnA.b).b;
        Map map2 = (Map) c2649jnA.a;
        if (map2 != null) {
            c2833r8.a = new C2809q8[map2.size()];
            int i = 0;
            for (Map.Entry entry : map2.entrySet()) {
                c2833r8.a[i] = new C2809q8();
                c2833r8.a[i].a = StringUtils.getUTF8Bytes((String) entry.getKey());
                c2833r8.a[i].b = StringUtils.getUTF8Bytes((String) entry.getValue());
                i++;
            }
        }
        InterfaceC2928v3 interfaceC2928v3 = c2649jnA.b;
        int i2 = ((E4) interfaceC2928v3).a;
        return new C2893ti(c2833r8, interfaceC2928v3);
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @VisibleForTesting
    public C2640je(@NonNull Ca ca) {
        this.a = ca;
    }

    @NonNull
    public final Map<String, String> a(@NonNull C2893ti c2893ti) {
        throw new UnsupportedOperationException();
    }
}
