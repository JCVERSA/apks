package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;

public final class C2973wn extends R4 {
    public final L6 b;

    public C2973wn(@NonNull O4 o4, @NonNull L6 l6) {
        super(o4);
        this.b = l6;
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6, @NonNull L4 l4) {
        F4 f4 = l4.b.d.a;
        this.b.a(f4.i);
        Pb pbL = C2910ua.E.l();
        if (Boolean.TRUE.equals(f4.b)) {
            pbL.a(true);
        } else {
            if (Boolean.FALSE.equals(f4.b)) {
                pbL.a(false);
            }
        }
        pbL.a(f4.c);
        Boolean bool = f4.n;
        C2910ua.E.b().b(bool != null ? bool.booleanValue() : true);
        return false;
    }
}
