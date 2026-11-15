package io.appmetrica.analytics.impl;

import defpackage.e74;
import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.coreapi.internal.control.ToggleObserver;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.impl.Xb;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;
import java.util.ArrayList;
import java.util.Iterator;

public final class Xb implements Ub, ToggleObserver {
    public final ArrayList a = new ArrayList();
    public final IHandlerExecutor b = C2910ua.j().w().c();
    public C2600hn c;
    public boolean d;

    public final void a(Toggle toggle) {
        C2600hn c2600hn = new C2600hn(toggle);
        this.c = c2600hn;
        c2600hn.c.registerObserver(this, true);
    }

    public final void b(Object obj) {
        C2600hn c2600hn = this.c;
        if (c2600hn == null) {
            y45.B("togglesHolder");
            c2600hn = null;
        }
        c2600hn.b.b(obj);
    }

    @Override
    public final void onStateChanged(final boolean z) {
        this.b.execute(new Runnable() {
            @Override
            public final void run() {
                Xb.a(this.b, z);
            }
        });
    }

    public final void a(final LocationControllerObserver locationControllerObserver, final boolean z) {
        this.b.execute(new Runnable() {
            @Override
            public final void run() {
                Xb.a(this.b, locationControllerObserver, z);
            }
        });
    }

    public static final void a(Xb xb, LocationControllerObserver locationControllerObserver, boolean z) {
        xb.a.add(locationControllerObserver);
        if (z) {
            if (xb.d) {
                locationControllerObserver.startLocationTracking();
            } else {
                locationControllerObserver.stopLocationTracking();
            }
        }
    }

    public static final void a(Xb xb, boolean z) {
        if (xb.d != z) {
            xb.d = z;
            e74 e74Var = z ? Vb.a : Wb.a;
            Iterator it = xb.a.iterator();
            while (it.hasNext()) {
                e74Var.invoke((LocationControllerObserver) it.next());
            }
        }
    }

    public final void a(Object obj) {
        C2600hn c2600hn = this.c;
        if (c2600hn == null) {
            y45.B("togglesHolder");
            c2600hn = null;
        }
        c2600hn.b.a(obj);
    }

    public final void a(boolean z) {
        C2600hn c2600hn = this.c;
        if (c2600hn == null) {
            y45.B("togglesHolder");
            c2600hn = null;
        }
        c2600hn.a.a(z);
    }
}
