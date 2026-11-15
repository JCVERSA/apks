package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;

public final class C2651k0 {
    public final C2948vn a;
    public volatile Boolean b;
    public Ia c;
    public Ja d;

    public C2651k0() {
        this(new C2948vn());
    }

    public final synchronized Ia a(Context context, C2630j4 c2630j4) {
        try {
            if (this.c == null) {
                if (a(context)) {
                    this.c = new C2701m0();
                } else {
                    this.c = new C2626j0(context, c2630j4);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.c;
    }

    public C2651k0(C2948vn c2948vn) {
        this.a = c2948vn;
    }

    public final boolean a(Context context) {
        Boolean boolValueOf = this.b;
        if (boolValueOf == null) {
            synchronized (this) {
                try {
                    boolValueOf = this.b;
                    if (boolValueOf == null) {
                        this.a.getClass();
                        boolean zA = C2948vn.a(context);
                        boolValueOf = Boolean.valueOf(!zA);
                        this.b = boolValueOf;
                        if (!zA) {
                            ImportantLogger.INSTANCE.info("AppMetrica", "User is locked. So use stubs. Events will not be sent.", new Object[0]);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return boolValueOf.booleanValue();
    }
}
