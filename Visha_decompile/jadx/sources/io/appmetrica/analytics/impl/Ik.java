package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.List;

public final class Ik implements InterfaceC2585h8 {
    public final Oi a;

    public Ik() {
        this(new Oi());
    }

    @Override
    @NonNull
    public final List<C2893ti> fromModel(@NonNull Hk hk) {
        A8 a8 = new A8();
        a8.a = 1;
        a8.b = new C3033z8();
        C2893ti c2893tiFromModel = this.a.fromModel(hk.a);
        a8.b.a = (C2958w8) c2893tiFromModel.a;
        C2903u3 c2903u3 = new C2903u3(C2903u3.b(c2893tiFromModel));
        c2893tiFromModel.b.getBytesTruncated();
        return Collections.singletonList(new C2893ti(a8, c2903u3));
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public Ik(Oi oi) {
        this.a = oi;
    }

    @NonNull
    public final Hk a(@NonNull List<C2893ti> list) {
        throw new UnsupportedOperationException();
    }
}
