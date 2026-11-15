package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.HashMap;

public final class C2647jl {
    public final C2960wa a = new C2960wa();
    public final HashMap b = new HashMap();
    public Hl c = null;
    public final C2598hl d = new C2598hl(this);

    public static final C2647jl a() {
        return AbstractC2622il.a;
    }

    public final C2499dm a(Context context, C2532f5 c2532f5, Bl bl) {
        C2499dm c2499dm = (C2499dm) this.b.get(c2532f5.a);
        boolean z = true;
        if (c2499dm == null) {
            synchronized (this.b) {
                try {
                    c2499dm = (C2499dm) this.b.get(c2532f5.a);
                    if (c2499dm == null) {
                        c2499dm = new C2499dm(new C2524em(context, c2532f5.a, bl, this.d));
                        c2499dm.f();
                        this.b.put(c2532f5.a, c2499dm);
                        z = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z) {
            c2499dm.a(bl);
        }
        return c2499dm;
    }

    public final void a(C2532f5 c2532f5, InterfaceC2871sl interfaceC2871sl) {
        synchronized (this.b) {
            try {
                this.a.a(c2532f5.a, interfaceC2871sl);
                Hl hl = this.c;
                if (hl != null) {
                    interfaceC2871sl.a(hl);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
