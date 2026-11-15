package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.List;

public final class Gk implements InterfaceC2585h8 {
    public final C2840rf a;
    public final Tf b;

    public Gk() {
        this(new C2840rf(), new Tf());
    }

    @Override
    @NonNull
    public final List<C2893ti> fromModel(@NonNull Fk fk) {
        C2893ti c2893tiFromModel;
        A8 a8 = new A8();
        a8.a = 3;
        a8.d = new C3008y8();
        C2893ti c2893tiFromModel2 = this.a.fromModel(fk.a);
        a8.d.a = (C2883t8) c2893tiFromModel2.a;
        C2717mg c2717mg = fk.b;
        if (c2717mg != null) {
            c2893tiFromModel = this.b.fromModel(c2717mg);
            a8.d.b = (C2933v8) c2893tiFromModel.a;
        } else {
            c2893tiFromModel = null;
        }
        return Collections.singletonList(new C2893ti(a8, new C2903u3(C2903u3.b(c2893tiFromModel2, c2893tiFromModel))));
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public Gk(C2840rf c2840rf, Tf tf) {
        this.a = c2840rf;
        this.b = tf;
    }

    @NonNull
    public final Fk a(@NonNull List<C2893ti> list) {
        throw new UnsupportedOperationException();
    }
}
