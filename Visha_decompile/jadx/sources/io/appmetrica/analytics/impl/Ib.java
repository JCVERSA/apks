package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.impl.Ib;

public final class Ib implements InterfaceC2451c {
    public final InterfaceC2402a0 a;
    public final C2425an b = new C2425an();

    public Ib(InterfaceC2402a0 interfaceC2402a0) {
        this.a = interfaceC2402a0;
    }

    public static final void a(Ib ib, S s) {
        ib.a.a(s);
    }

    @Override
    public final void onAppNotResponding() {
        StackTraceElement[] stackTraceElementArrB;
        C2425an c2425an = this.b;
        Thread threadA = c2425an.a.a();
        try {
            stackTraceElementArrB = c2425an.a.b();
            if (stackTraceElementArrB == null) {
                try {
                    stackTraceElementArrB = threadA.getStackTrace();
                } catch (SecurityException unused) {
                }
            }
        } catch (SecurityException unused2) {
            stackTraceElementArrB = null;
        }
        final S s = new S((Tm) c2425an.b.apply(threadA, stackTraceElementArrB), c2425an.a(threadA, null), c2425an.c.b());
        ((G9) C2879t4.i().c.a()).b.post(new Runnable() {
            @Override
            public final void run() {
                Ib.a(this.b, s);
            }
        });
    }
}
