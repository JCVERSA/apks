package com.yandex.mobile.ads.impl;

import java.util.ArrayDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class po2 implements lo2.a {
    private final ArrayDeque<lo2> b = new ArrayDeque<>();
    private lo2 c = null;
    private final ThreadPoolExecutor a = new ThreadPoolExecutor(1, 1, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());

    private void b() {
        lo2 lo2VarPoll = this.b.poll();
        this.c = lo2VarPoll;
        if (lo2VarPoll != null) {
            lo2VarPoll.a(this.a);
        }
    }

    public final void a() {
        this.c = null;
        b();
    }

    public final void a(lo2 lo2Var) {
        lo2Var.a(this);
        this.b.add(lo2Var);
        if (this.c == null) {
            b();
        }
    }
}
