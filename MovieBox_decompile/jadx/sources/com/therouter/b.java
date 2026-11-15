package com.therouter;

import kotlin.jvm.internal.Intrinsics;

final class b {

    private final String f39756a;

    private long f39757b;

    public b(String trace) {
        Intrinsics.h(trace, "trace");
        this.f39756a = trace;
        this.f39757b = System.currentTimeMillis();
    }

    public final long a() {
        return this.f39757b;
    }

    public final String b() {
        return this.f39756a;
    }
}
