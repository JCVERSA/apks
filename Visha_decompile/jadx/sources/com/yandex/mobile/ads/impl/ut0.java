package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Queue;

public final class ut0<T> {
    private final Queue<T> a;

    public ut0(Queue<T> queue) {
        y45.j(queue, "queue");
        this.a = queue;
    }

    public final int a() {
        return this.a.size();
    }

    public final T b() {
        return this.a.poll();
    }
}
