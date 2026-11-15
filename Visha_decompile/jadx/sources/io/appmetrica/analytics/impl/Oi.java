package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
import java.util.Map;

public final class Oi implements Converter {
    public final C2640je a;
    public final F3 b;
    public final C3035za c;
    public final C3035za d;

    public Oi() {
        this(new C2640je(), new F3(), new C3035za(100), new C3035za(1000));
    }

    @Override
    @NonNull
    public final C2893ti fromModel(@NonNull Si si) {
        C2893ti c2893tiA;
        C2958w8 c2958w8 = new C2958w8();
        C2649jn c2649jnA = this.c.a(si.a);
        c2958w8.a = StringUtils.getUTF8Bytes((String) c2649jnA.a);
        List<String> list = si.b;
        C2893ti c2893tiA2 = null;
        if (list != null) {
            c2893tiA = this.b.fromModel(list);
            c2958w8.b = (C2684l8) c2893tiA.a;
        } else {
            c2893tiA = null;
        }
        C2649jn c2649jnA2 = this.d.a(si.c);
        c2958w8.c = StringUtils.getUTF8Bytes((String) c2649jnA2.a);
        Map<String, String> map = si.d;
        if (map != null) {
            c2893tiA2 = this.a.fromModel(map);
            c2958w8.d = (C2833r8) c2893tiA2.a;
        }
        return new C2893ti(c2958w8, new C2903u3(C2903u3.b(c2649jnA, c2893tiA, c2649jnA2, c2893tiA2)));
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public Oi(C2640je c2640je, F3 f3, C3035za c3035za, C3035za c3035za2) {
        this.a = c2640je;
        this.b = f3;
        this.c = c3035za;
        this.d = c3035za2;
    }

    @NonNull
    public final Si a(@NonNull C2893ti c2893ti) {
        throw new UnsupportedOperationException();
    }
}
