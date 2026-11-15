package io.appmetrica.analytics.impl;

import java.util.concurrent.TimeUnit;

public final class C2631j5 extends AbstractC2607i5 {
    public C2631j5(C2706m5 c2706m5) {
        super(c2706m5);
    }

    @Override
    public final boolean b(int i) {
        return i < 113;
    }

    @Override
    public final void c() {
        Le le = this.a.c;
        try {
            C3020yk c3020yk = new C3020yk(le, "background");
            Long lA = c3020yk.c.a(C3020yk.d);
            if (lA != null) {
                c3020yk.a(C3020yk.d, Long.valueOf(TimeUnit.SECONDS.toMillis(lA.longValue())));
            }
            Long lA2 = c3020yk.c.a(C3020yk.e);
            if (lA2 != null) {
                c3020yk.a(C3020yk.e, Long.valueOf(TimeUnit.SECONDS.toMillis(lA2.longValue())));
            }
        } catch (Throwable unused) {
        }
        try {
            C3020yk c3020yk2 = new C3020yk(le, "foreground");
            Long lA3 = c3020yk2.c.a(C3020yk.d);
            if (lA3 != null) {
                c3020yk2.a(C3020yk.d, Long.valueOf(TimeUnit.SECONDS.toMillis(lA3.longValue())));
            }
            Long lA4 = c3020yk2.c.a(C3020yk.e);
            if (lA4 != null) {
                c3020yk2.a(C3020yk.e, Long.valueOf(TimeUnit.SECONDS.toMillis(lA4.longValue())));
            }
        } catch (Throwable unused2) {
        }
    }
}
