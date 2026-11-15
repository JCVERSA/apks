package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

public final class C2940vf implements Converter {
    public final C3010ya a;

    public C2940vf() {
        this(new C3010ya(20, 100));
    }

    @Override
    @NonNull
    public final C2893ti fromModel(@NonNull List<String> list) {
        C2649jn c2649jnA = this.a.a((List<Object>) list);
        List list2 = (List) c2649jnA.a;
        C2908u8[] c2908u8Arr = new C2908u8[0];
        if (list2 != null) {
            c2908u8Arr = new C2908u8[list2.size()];
            for (int i = 0; i < list2.size(); i++) {
                C2908u8 c2908u8 = new C2908u8();
                c2908u8Arr[i] = c2908u8;
                c2908u8.a = StringUtils.getUTF8Bytes((String) list2.get(i));
            }
        }
        c2649jnA.b.getBytesTruncated();
        return new C2893ti(c2908u8Arr, c2649jnA.b);
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @VisibleForTesting
    public C2940vf(@NonNull C3010ya c3010ya) {
        this.a = c3010ya;
    }

    @NonNull
    public final List<String> a(@NonNull C2893ti c2893ti) {
        throw new UnsupportedOperationException();
    }
}
