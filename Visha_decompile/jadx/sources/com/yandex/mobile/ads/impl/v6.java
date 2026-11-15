package com.yandex.mobile.ads.impl;

import defpackage.e74;
import defpackage.eb5;
import defpackage.ka5;
import defpackage.y45;
import defpackage.zfb;
import java.util.Map;
import kotlin.jvm.internal.Lambda;

final class v6 extends Lambda implements e74 {
    final Map.Entry<String, c7> b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v6(Map.Entry<String, c7> entry) {
        super(1);
        this.b = entry;
    }

    @Override
    public final Object invoke(Object obj) {
        eb5 eb5Var = (eb5) obj;
        y45.j(eb5Var, "$this$putJsonObject");
        ka5.c(eb5Var, "usagePercent", Integer.valueOf(this.b.getValue().b()));
        ka5.b(eb5Var, "isDisabled", Boolean.valueOf(this.b.getValue().a()));
        return zfb.a;
    }
}
