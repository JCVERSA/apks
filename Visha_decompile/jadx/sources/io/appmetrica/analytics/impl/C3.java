package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.List;

public final class C3 implements InterfaceC2585h8 {
    public final D3 a;

    public C3() {
        this(new D3());
    }

    @Override
    @NonNull
    public final List<C2893ti> fromModel(@NonNull B3 b3) {
        A8 a8 = new A8();
        a8.e = new C2634j8();
        C2893ti c2893tiFromModel = this.a.fromModel(b3.b);
        a8.e.a = (C2659k8) c2893tiFromModel.a;
        a8.a = b3.a;
        return Collections.singletonList(new C2893ti(a8, new C2903u3(C2903u3.b(c2893tiFromModel))));
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public C3(D3 d3) {
        this.a = d3;
    }

    @NonNull
    public final B3 a(@NonNull List<C2893ti> list) {
        throw new UnsupportedOperationException();
    }
}
