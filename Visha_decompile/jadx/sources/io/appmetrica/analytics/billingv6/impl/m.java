package io.appmetrica.analytics.billingv6.impl;

import defpackage.c74;
import defpackage.zfb;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Lambda;

public final class m extends Lambda implements c74 {
    public final Map a;
    public final Map b;
    public final p c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(LinkedHashMap linkedHashMap, Map map, p pVar) {
        super(0);
        this.a = linkedHashMap;
        this.b = map;
        this.c = pVar;
    }

    @Override
    public final Object invoke() {
        Map map = this.a;
        Map map2 = this.b;
        p pVar = this.c;
        t.a(map, map2, pVar.d, pVar.c.getBillingInfoManager());
        return zfb.a;
    }
}
