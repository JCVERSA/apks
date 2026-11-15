package com.yandex.mobile.ads.impl;

import defpackage.y45;

public abstract class h42 {
    private final String a;
    private final boolean b;
    private k42 c;
    private long d;

    public h42(String str) {
        this(str, true);
    }

    public final boolean a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final long c() {
        return this.d;
    }

    public final k42 d() {
        return this.c;
    }

    public abstract long e();

    public final String toString() {
        return this.a;
    }

    public h42(String str, boolean z) {
        y45.j(str, "name");
        this.a = str;
        this.b = z;
        this.d = -1L;
    }

    public final void a(k42 k42Var) {
        y45.j(k42Var, "queue");
        k42 k42Var2 = this.c;
        if (k42Var2 == k42Var) {
            return;
        }
        if (k42Var2 != null) {
            throw new IllegalStateException("task is in multiple queues");
        }
        this.c = k42Var;
    }

    public final void a(long j) {
        this.d = j;
    }
}
