package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.List;

public final class Ek implements InterfaceC2585h8 {
    public final Oi a;
    public final C2840rf b;

    public Ek() {
        this(new Oi(), new C2840rf());
    }

    @Override
    @NonNull
    public final List<C2893ti> fromModel(@NonNull Dk dk) {
        A8 a8 = new A8();
        a8.a = 2;
        a8.c = new C2983x8();
        C2893ti c2893tiFromModel = this.a.fromModel(dk.b);
        a8.c.b = (C2958w8) c2893tiFromModel.a;
        C2893ti c2893tiFromModel2 = this.b.fromModel(dk.a);
        a8.c.a = (C2883t8) c2893tiFromModel2.a;
        return Collections.singletonList(new C2893ti(a8, new C2903u3(C2903u3.b(c2893tiFromModel, c2893tiFromModel2))));
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public Ek(Oi oi, C2840rf c2840rf) {
        this.a = oi;
        this.b = c2840rf;
    }

    @NonNull
    public final Dk a(@NonNull List<C2893ti> list) {
        throw new UnsupportedOperationException();
    }
}
