package com.facebook.ads.redexgen.core;

public class RunnableC1427Zw implements Runnable {
    public final KL A00;

    public RunnableC1427Zw(KL kl) {
        this.A00 = kl;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0H.getVisibility() == 0) {
                this.A00.A0p(8);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
