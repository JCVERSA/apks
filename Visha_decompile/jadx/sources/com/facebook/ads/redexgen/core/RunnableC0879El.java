package com.facebook.ads.redexgen.core;

public final class RunnableC0879El implements Runnable {
    public final InterfaceC0878Ek A00;

    public RunnableC0879El(InterfaceC0878Ek interfaceC0878Ek) {
        this.A00 = interfaceC0878Ek;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.AE4();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
