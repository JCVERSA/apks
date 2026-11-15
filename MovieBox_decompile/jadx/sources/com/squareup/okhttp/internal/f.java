package com.squareup.okhttp.internal;

import com.squareup.okhttp.Route;
import java.util.LinkedHashSet;
import java.util.Set;

public final class f {

    private final Set f39475a = new LinkedHashSet();

    public synchronized void a(Route route) {
        this.f39475a.remove(route);
    }

    public synchronized void b(Route route) {
        this.f39475a.add(route);
    }

    public synchronized boolean c(Route route) {
        return this.f39475a.contains(route);
    }
}
