package io.appmetrica.analytics.impl;

public final class RunnableC3005y5 implements Runnable {
    public final Sd a;
    public final C3030z5 b;

    public RunnableC3005y5(C3030z5 c3030z5, Sd sd) {
        this.b = c3030z5;
        this.a = sd;
    }

    @Override
    public final void run() {
        synchronized (this.b) {
            try {
                C3030z5 c3030z5 = this.b;
                Object obj = c3030z5.a;
                if (obj == null) {
                    c3030z5.b.add(this.a);
                } else {
                    this.a.consume(obj);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
