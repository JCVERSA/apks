package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.HashMap;
import java.util.Set;

public final class C2799pn {
    public final C2836rb a;

    public C2799pn() {
        this(new C2836rb());
    }

    public final C2743nh a(C2749nn c2749nn, C2992xh c2992xh) {
        String str;
        C2500dn c2500dn = c2749nn.a;
        String str2 = c2500dn == null ? "" : (String) WrapUtils.getOrDefault(c2500dn.a, "");
        byte[] bArrFromModel = this.a.fromModel(c2749nn);
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(c2992xh.b.getApiKey());
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(bArrFromModel, str2, 5891, orCreatePublicLogger);
        c2506e4.c = c2992xh.d();
        HashMap map = c2506e4.q;
        C2791pf c2791pf = new C2791pf(c2992xh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(c2992xh.b);
        synchronized (c2992xh) {
            str = c2992xh.f;
        }
        return new C2743nh(c2506e4, true, 1, map, new C2992xh(c2791pf, counterConfiguration, str));
    }

    public C2799pn(C2836rb c2836rb) {
        this.a = c2836rb;
    }
}
