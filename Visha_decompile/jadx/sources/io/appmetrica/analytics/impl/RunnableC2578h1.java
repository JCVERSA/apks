package io.appmetrica.analytics.impl;

public final class RunnableC2578h1 implements Runnable {
    public final String a;
    public final String b;
    public final C2702m1 c;

    public RunnableC2578h1(C2702m1 c2702m1, String str, String str2) {
        this.c = c2702m1;
        this.a = str;
        this.b = str2;
    }

    @Override
    public final void run() {
        C2702m1.a(this.c).reportEvent(this.a, this.b);
    }
}
