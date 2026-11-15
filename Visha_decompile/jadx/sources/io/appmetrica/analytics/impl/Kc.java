package io.appmetrica.analytics.impl;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

public final class Kc implements J8, W8 {
    public final S6 a;
    public final Fg b;
    public final AtomicLong c;

    public Kc(S6 s6, Fg fg) {
        this.a = s6;
        this.b = fg;
        this.c = new AtomicLong(s6.a());
        s6.a(this);
    }

    @Override
    public final void a(List<Integer> list) {
        this.c.addAndGet(list.size());
    }

    @Override
    public final boolean b() {
        return this.c.get() >= ((long) ((C2469ch) this.b.a()).i);
    }

    @Override
    public final void a() {
        this.c.set(this.a.a());
    }

    @Override
    public final void b(List<Integer> list) {
        this.c.addAndGet(-list.size());
    }
}
