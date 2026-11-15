package io.appmetrica.analytics.impl;

import android.location.Location;

public final class I0 implements Runnable {
    public final Location a;
    public final C2702m1 b;

    public I0(C2702m1 c2702m1, Location location) {
        this.b = c2702m1;
        this.a = location;
    }

    @Override
    public final void run() {
        C2801q0 c2801q0 = this.b.a;
        Location location = this.a;
        c2801q0.getClass();
        C2776p0.c().a(location);
    }
}
