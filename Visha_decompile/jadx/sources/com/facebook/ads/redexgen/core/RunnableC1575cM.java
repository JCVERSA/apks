package com.facebook.ads.redexgen.core;

public class RunnableC1575cM implements Runnable {
    public final C4K A00;

    public RunnableC1575cM(C4K c4k) {
        this.A00 = c4k;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0A = true;
            this.A00.A0V.AFE(true);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
