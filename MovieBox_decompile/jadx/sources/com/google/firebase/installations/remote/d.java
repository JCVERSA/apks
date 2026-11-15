package com.google.firebase.installations.remote;

import com.google.firebase.installations.h;
import java.util.concurrent.TimeUnit;

class d {

    private static final long f31121d = TimeUnit.HOURS.toMillis(24);

    private static final long f31122e = TimeUnit.MINUTES.toMillis(30);

    private final h f31123a = h.c();

    private long f31124b;

    private int f31125c;

    d() {
    }

    private synchronized long a(int i10) {
        if (c(i10)) {
            return (long) Math.min(Math.pow(2.0d, this.f31125c) + this.f31123a.e(), f31122e);
        }
        return f31121d;
    }

    private static boolean c(int i10) {
        return i10 == 429 || (i10 >= 500 && i10 < 600);
    }

    private static boolean d(int i10) {
        return (i10 >= 200 && i10 < 300) || i10 == 401 || i10 == 404;
    }

    private synchronized void e() {
        this.f31125c = 0;
    }

    public synchronized boolean b() {
        return this.f31125c == 0 || this.f31123a.a() > this.f31124b;
    }

    public synchronized void f(int i10) {
        if (d(i10)) {
            e();
            return;
        }
        this.f31125c++;
        this.f31124b = this.f31123a.a() + a(i10);
    }
}
