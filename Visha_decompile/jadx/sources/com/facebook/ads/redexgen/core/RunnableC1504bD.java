package com.facebook.ads.redexgen.core;

public class RunnableC1504bD implements Runnable {
    public final JR A00;

    public RunnableC1504bD(JR jr) {
        this.A00 = jr;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A03 != null && this.A00.A03.getVisibility() == 0) {
                this.A00.A0S(8);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
