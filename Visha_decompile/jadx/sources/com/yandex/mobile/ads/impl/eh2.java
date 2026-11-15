package com.yandex.mobile.ads.impl;

import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

final class eh2 extends Lambda implements e74 {
    final hh2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eh2(hh2 hh2Var) {
        super(1);
        this.b = hh2Var;
    }

    @Override
    public final Object invoke(Object obj) {
        String str = (String) obj;
        y45.j(str, "message");
        this.b.a.invoke(new dy.h(str));
        return zfb.a;
    }
}
