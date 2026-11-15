package io.appmetrica.analytics.impl;

public final class RunnableC2552g0 implements Runnable {
    public final C2602i0 a;

    public RunnableC2552g0(C2602i0 c2602i0) {
        this.a = c2602i0;
    }

    @Override
    public final void run() {
        C2602i0 c2602i0 = this.a;
        synchronized (c2602i0) {
            if (c2602i0.a != null && c2602i0.a()) {
                try {
                    c2602i0.d = null;
                    c2602i0.a.unbindService(c2602i0.i);
                } catch (Throwable unused) {
                }
            }
            c2602i0.d = null;
        }
    }
}
