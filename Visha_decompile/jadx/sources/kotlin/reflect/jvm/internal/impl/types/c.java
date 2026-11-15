package kotlin.reflect.jvm.internal.impl.types;

import defpackage.jbb;
import defpackage.md;
import defpackage.pd;
import defpackage.sbb;
import defpackage.x71;
import defpackage.xt1;
import defpackage.y45;

public final class c implements jbb {
    public static final c a = new c();

    @Override
    public j a(md mdVar, sbb sbbVar, xt1 xt1Var) {
        y45.j(mdVar, "annotations");
        return mdVar.isEmpty() ? j.c.h() : j.c.g(x71.e(new pd(mdVar)));
    }
}
