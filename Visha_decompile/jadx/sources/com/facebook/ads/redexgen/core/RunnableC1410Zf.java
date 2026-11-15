package com.facebook.ads.redexgen.core;

public class RunnableC1410Zf implements Runnable {
    public final C1411Zg A00;
    public final InterfaceC1412Zh A01;

    public RunnableC1410Zf(C1411Zg c1411Zg, InterfaceC1412Zh interfaceC1412Zh) {
        this.A00 = c1411Zg;
        this.A01 = interfaceC1412Zh;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A01.ACO();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
