package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.HashMap;

public final class C2502e0 {
    public final HashMap a = new HashMap();

    public final synchronized C2477d0 a(C2532f5 c2532f5, PublicLogger publicLogger, Le le) {
        C2477d0 c2477d0;
        c2477d0 = (C2477d0) this.a.get(c2532f5.toString());
        if (c2477d0 == null) {
            C2452c0 c2452c0D = le.d();
            c2477d0 = new C2477d0(c2452c0D.a, c2452c0D.b, new Tk(publicLogger, "[App Environment]"));
            this.a.put(c2532f5.toString(), c2477d0);
        }
        return c2477d0;
    }

    public final synchronized void a(C2452c0 c2452c0, Le le) {
        le.a(c2452c0).b();
    }
}
