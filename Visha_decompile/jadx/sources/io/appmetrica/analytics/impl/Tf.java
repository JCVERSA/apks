package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class Tf implements Converter {
    public final Oi a;
    public final C3035za b;
    public final C3035za c;

    public Tf() {
        this(new Oi(), new C3035za(100), new C3035za(2048));
    }

    @Override
    @NonNull
    public final C2893ti fromModel(@NonNull C2717mg c2717mg) {
        C2893ti c2893tiFromModel;
        C2933v8 c2933v8 = new C2933v8();
        C2649jn c2649jnA = this.b.a(c2717mg.a);
        c2933v8.a = StringUtils.getUTF8Bytes((String) c2649jnA.a);
        C2649jn c2649jnA2 = this.c.a(c2717mg.b);
        c2933v8.b = StringUtils.getUTF8Bytes((String) c2649jnA2.a);
        Si si = c2717mg.c;
        if (si != null) {
            c2893tiFromModel = this.a.fromModel(si);
            c2933v8.c = (C2958w8) c2893tiFromModel.a;
        } else {
            c2893tiFromModel = null;
        }
        return new C2893ti(c2933v8, new C2903u3(C2903u3.b(c2649jnA, c2649jnA2, c2893tiFromModel)));
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public Tf(Oi oi, C3035za c3035za, C3035za c3035za2) {
        this.a = oi;
        this.b = c3035za;
        this.c = c3035za2;
    }

    @NonNull
    public final C2717mg a(@NonNull C2893ti c2893ti) {
        throw new UnsupportedOperationException();
    }
}
