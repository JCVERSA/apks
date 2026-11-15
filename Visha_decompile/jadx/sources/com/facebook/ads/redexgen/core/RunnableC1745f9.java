package com.facebook.ads.redexgen.core;

public class RunnableC1745f9 implements Runnable {
    public final C0813Bw A00;

    public RunnableC1745f9(C0813Bw c0813Bw) {
        this.A00 = c0813Bw;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            C0813Bw.A03(this.A00);
            throw null;
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
