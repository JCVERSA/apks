package io.appmetrica.analytics.impl;

import defpackage.y71;
import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.coreutils.internal.toggle.ConjunctiveCompositeThreadSafeToggle;

public final class C2600hn {
    public final Y3 a;
    public final Zn b;
    public final ConjunctiveCompositeThreadSafeToggle c;

    public C2600hn(Toggle toggle) {
        Y3 y3 = new Y3(C2910ua.j().x());
        this.a = y3;
        Zn zn = new Zn();
        this.b = zn;
        this.c = new ConjunctiveCompositeThreadSafeToggle(y71.n(y3, zn, toggle == null ? new Sn() : toggle), "loc-def");
    }
}
