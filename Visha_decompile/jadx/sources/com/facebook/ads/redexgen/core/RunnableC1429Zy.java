package com.facebook.ads.redexgen.core;

public class RunnableC1429Zy implements Runnable {
    public final KL A00;

    public RunnableC1429Zy(KL kl) {
        this.A00 = kl;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0m();
            this.A00.A0n();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
