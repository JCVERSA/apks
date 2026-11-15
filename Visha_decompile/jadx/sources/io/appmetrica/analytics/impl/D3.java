package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.Converter;

public final class D3 implements Converter {
    public final C2840rf a;
    public final D7 b;
    public final C2691lf c;
    public final Tf d;

    public D3() {
        this(new C2840rf(), new D7(), new C2691lf(), new Tf());
    }

    @Override
    @NonNull
    public final C2893ti fromModel(@NonNull E3 e3) {
        C2893ti c2893tiA;
        C2659k8 c2659k8 = new C2659k8();
        C2893ti c2893tiA2 = this.a.fromModel(e3.a);
        c2659k8.a = (C2883t8) c2893tiA2.a;
        c2659k8.c = this.b.fromModel(e3.b);
        C2893ti c2893tiA3 = this.c.fromModel(e3.c);
        c2659k8.d = (C2858s8) c2893tiA3.a;
        C2717mg c2717mg = e3.d;
        if (c2717mg != null) {
            c2893tiA = this.d.fromModel(c2717mg);
            c2659k8.b = (C2933v8) c2893tiA.a;
        } else {
            c2893tiA = null;
        }
        return new C2893ti(c2659k8, new C2903u3(C2903u3.b(c2893tiA2, c2893tiA3, c2893tiA)));
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public D3(C2840rf c2840rf, D7 d7, C2691lf c2691lf, Tf tf) {
        this.a = c2840rf;
        this.b = d7;
        this.c = c2691lf;
        this.d = tf;
    }

    @NonNull
    public final E3 a(@NonNull C2893ti c2893ti) {
        throw new UnsupportedOperationException();
    }
}
