package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.a0;
import java.util.LinkedHashSet;
import java.util.Set;

public final class d {

    private final Set<a0> f37123a = new LinkedHashSet();

    public synchronized void a(a0 a0Var) {
        this.f37123a.remove(a0Var);
    }

    public synchronized void b(a0 a0Var) {
        this.f37123a.add(a0Var);
    }

    public synchronized boolean c(a0 a0Var) {
        return this.f37123a.contains(a0Var);
    }
}
