package io.appmetrica.analytics.impl;

public final class Uh implements Runnable {
    public final String a;
    public final String b;
    public final Yh c;

    public Uh(Yh yh, String str, String str2) {
        this.c = yh;
        this.a = str;
        this.b = str2;
    }

    @Override
    public final void run() {
        Yh yh = this.c;
        Yh.a(yh.a, yh.d, yh.e).putAppEnvironmentValue(this.a, this.b);
    }
}
