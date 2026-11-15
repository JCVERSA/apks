package io.appmetrica.analytics.impl;

public final class T1 implements Runnable {
    public final Sd a;
    public final G7 b;

    public T1(V1 v1, G7 g7) {
        this.a = v1;
        this.b = g7;
    }

    @Override
    public final void run() {
        this.a.consume(this.b);
    }
}
