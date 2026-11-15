package com.google.firebase.crashlytics.internal.common;

import java.util.concurrent.atomic.AtomicInteger;

public final class l0 {

    private final AtomicInteger f30373a = new AtomicInteger();

    private final AtomicInteger f30374b = new AtomicInteger();

    public void a() {
        this.f30374b.getAndIncrement();
    }

    public void b() {
        this.f30373a.getAndIncrement();
    }

    public void c() {
        this.f30374b.set(0);
    }
}
