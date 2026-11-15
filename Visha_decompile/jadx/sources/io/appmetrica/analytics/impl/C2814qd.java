package io.appmetrica.analytics.impl;

import defpackage.e74;
import java.util.Map;
import kotlin.jvm.internal.Lambda;

public final class C2814qd extends Lambda implements e74 {
    public final C2687lb a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2814qd(C2687lb c2687lb) {
        super(1);
        this.a = c2687lb;
    }

    @Override
    public final Object invoke(Object obj) {
        C2490dd c2490dd = (C2490dd) ((Map.Entry) obj).getValue();
        return c2490dd.b.parse(this.a);
    }
}
